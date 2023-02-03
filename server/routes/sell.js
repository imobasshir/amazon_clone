const express = require("express");
const Sell = require("../models/sell");
const router = express.Router();
const multer = require('multer')
const path = require('path')

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, path.join(__dirname, '../uploads'))
    },
    filename: (req, files, cb) => {
        cb(null, Date.now() + path.extname(files.originalname))
    },
});

const fileFilter = (req, file, cb) => {
    if (file.mimetype === "image/jpeg" || file.mimetype === "image/png") {
        cb(null, true)
    } else {
        cb(null, false)
    }
};

const uploadImage = multer({
    storage: storage,
    limits: {
        fileSize: 1024 * 1024 * 5,
    },
    fileFilter: fileFilter,
});

router.post('/sell', uploadImage.array("productImage", 10), async (req, res) => {
    try {
        const { 
            productName, price, description, quantity, cateogry, productImage 
        } = req.body;
        let sell = new Sell({
            productName,
            price,
            description,
            quantity,
            cateogry,
            productImage,
        })
        sell = await sell.save();
        res.status(200).json(sell);
    } catch (e) {
        res.status(500).json({ error: e.message });
    }
})

router.get("/sell", async (req, res) => {
    try {
        const sell = await Sell.find({});
        res.status(200).json({ sell });
    } catch (e) {
        res.status(500).json({ error: e.message });
    }
});

module.exports = router;