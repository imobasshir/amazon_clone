const express = require("express");
const User = require("../models/user");
const bcryptjs = require("bcryptjs");
const authRouter = express.Router();
const jwt = require('jsonwebtoken');
const auth = require("../middleware/auth");

// SIGNUP API
authRouter.post("/api/signup", async (req, res) => {
  try {
    const { name, email, password, type } = req.body;

    const existingUser = await User.findOne({ email });
    if (existingUser) {
      return res
        .status(400)
        .json({ msg: "User with same email already exists!" });
    }

    // hash password
    const hashedPassword = await bcryptjs.hash(password, 8);

    // create a new user
    let user = new User({
      email,
      password: hashedPassword,
      name,
      type,
    });
    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// SIGNIN API
authRouter.post("/api/signin", async (req, res) => {
  try {
    const { email, password } = req.body;

    const user = await User.findOne({ email });
    if (!user) {
      return res.status(400).json({ msg: "User does not exist!" });
    }
    // compare password if user exist
    const isMatch = await bcryptjs.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: "Wrong Password!" });
    }

    const token = jwt.sign({ id: user._id }, "passwordKey")
    res.json({ token, ...user._doc })
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// TOKEN VALIDATION
authRouter.post("/tokenIsValid", async (req, res) => {
  try {
    const token = req.header('x-auth-token');
    if (!token) return res.json(false);
    const isVerified = jwt.verify(token, "passwordKey");
    if (!isVerified) return res.json(false);

    const user = await User.findById(isVerified.id);
    if (!user) return res.json(false);
    res.json(true);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// GET USER DATA
authRouter.get('/', auth, async (req, res) => {
  const user = await User.findById(req.user);
  res.json({ ...user._doc, token: req.token });
});

module.exports = authRouter;
