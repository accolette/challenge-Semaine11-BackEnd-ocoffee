import express from "express";
const router = express.Router();

// Controller import
import homeController from "../controllers/home.controller.js";

// Routes handleing
router.get("/", homeController.homePage);

export default router;
