import express from "express";
const router = express.Router();

// Controllers import
import homeController from "../controllers/home.controller.js";
import shopController from "../controllers/shop.controller.js";
import catalogController from "../controllers/catalog.controller.js";

// Routes handleing
router.get("/", homeController.homePage);
router.get("/boutique", shopController.shopPage);
router.post("/boutique/merci", shopController.formPart);
router.get("/boutique/merci", shopController.thanksPage);
router.get("/catalogue", catalogController.catalogPage);
router.get("/catalogue/produit:id", catalogController.productPage);

export default router;
