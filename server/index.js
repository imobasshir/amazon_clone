// importing packages
const express = require("express");
const mongoose = require("mongoose");
require("dotenv").config();

// importing files
const authRouter = require("./routes/auth");
const router = require("./routes/sell");
const adminRouter = require("./routes/admin");
// const productRouter = require("./routes/product");

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
app.use(router);
app.use(adminRouter);
// app.use(productRouter);

// connections
mongoose.set('strictQuery', true);
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
