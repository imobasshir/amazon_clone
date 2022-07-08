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
    `mongodb+srv://${user}:${pass}@cluster0.ccoj6.mongodb.net/?retryWrites=true&w=majority`;

// middleware
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

app.listen(PORT, () => {
    console.log(`connected at port ${PORT}`);
});
