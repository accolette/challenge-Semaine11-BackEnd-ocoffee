// ================== IMPORTS ==================
import express from "express";
import "dotenv/config";

// ================== SETTINGS ==================
const app = express();
const PORT = process.env.PORT;

// ================== APP ==================
app.get("/", (req, res, next) => {
  res.send("Yellow World");
});

// ================== LISTENING ==================
app.listen(PORT, () => {
  console.log(`serveur is running on http://localhost:${PORT}/;`);
});
