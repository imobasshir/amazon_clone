// importing packages
const express = require("express");
const mongoose = require("mongoose");
require("dotenv").config();

// importing files
const authRouter = require("./routes/auth");

// initialization
const PORT = 3000;
const app = express();
const pass = process.env.pass;
const user = process.env.user;
const DB =
    'mongodb://localhost:27017/amazon_clone'

// middleware
app.use(express.json());
app.use(authRouter);

// connections
mongoose
    .connect(DB)
    .then(() => {
        console.log("connected sucessful");
    })
    .catch((e) => {
        console.log(e);
    });

app.listen(PORT, '0.0.0.0', () => {
    console.log(`connected at port ${PORT}`);
});
