// ================== IMPORTS ==================
import path from "node:path";
import { fileURLToPath } from "node:url";
import express from "express";
import "dotenv/config";
import router from "./routes/router.js";

// ================== SETTINGS ==================
const app = express();
const PORT = process.env.PORT;
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
// EJS initialisation
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(express.static(path.join(__dirname, "public")));

// ================== ROUTES ==================
app.use(router);
app.use((req, res) => {
  res.status(404).render("404");
});

// ================== LISTENING ==================
app.listen(PORT, () => {
  console.log(`serveur is running on http://localhost:${PORT}/;`);
});
