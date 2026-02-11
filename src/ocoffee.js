// ================== IMPORTS ==================
import path from "node:path";
import { fileURLToPath } from "node:url";
import express from "express";
import "dotenv/config";

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
app.get("/", (req, res, next) => {
  res.render("home");
});

// ================== LISTENING ==================
app.listen(PORT, () => {
  console.log(`serveur is running on http://localhost:${PORT}/;`);
});
