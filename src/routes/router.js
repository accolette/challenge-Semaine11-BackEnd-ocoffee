import express from "express";
const router = express.Router();

// Controllers import
import homeController from "../controllers/home.controller.js";
import boutiqueController from "../controllers/boutique.controller.js";

// Routes handleing
router.get("/", homeController.homePage);
router.get("/boutique", boutiqueController.boutiquePage);

export default router;
