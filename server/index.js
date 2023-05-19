// importing packages
const express = require("express");
const mongoose = require("mongoose");
require("dotenv").config();
const adminRouter = require("./routes/admin");

// importing files
const authRouter = require("./routes/auth");
const productRouter = require("./routes/product");
const userRouter = require("./routes/user");

// initialization
const PORT = 3000;
const app = express();
const pass = process.env.pass;
const user = process.env.user;
const DB =
    `mongodb+srv://${user}:${pass}@cluster0.uaffnz1.mongodb.net/?retryWrites=true&w=majority`
// middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

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
