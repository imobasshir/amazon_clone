const mongoose = require("mongoose");

const sellSchema = new mongoose.Schema({
    productName: {
        required: true,
        type: String,
        trim: true,
    },
    price: {
        required: true,
        type: Number,
        trim: true,
    },
    description: {
        type: String,
        default: "",
    },
    quantity: {
        required: true,
        type: Number,
        trim: true,
    },
    cateogry: {
        required: true,
        type: String,
        trim: true,
    },
    productImage: {
        data: Buffer,
        contentType: String,
    },
});

const Sell = new mongoose.model("Sell", sellSchema);

module.exports = Sell;