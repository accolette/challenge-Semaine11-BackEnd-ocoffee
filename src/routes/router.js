import express from "express";
const router = express.Router();

// Controllers import
import homeController from "../controllers/home.controller.js";
import shopController from "../controllers/shop.controller.js";
import catalogController from "../controllers/catalog.controller.js";

// Routes handleing
router.get("/", homeController.homePage);
router.get("/boutique", shopController.shopPage);
router.get("/catalogue", catalogController.catalogPage);

export default router;
