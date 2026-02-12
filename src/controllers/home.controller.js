import dataMapper from "../models/dataMapper.js";

const homeController = {
  homePage: async (req, res, next) => {
    try {
      let newProducts = await dataMapper.findNewProductsHp();
      if (!newProducts || newProducts.length === 0) {
        return res.status(404).send("404 : Aucune donnée trouvé");
      }
      res.render("home", {
        style: "home",
        newProducts,
      });
    } catch (error) {
      console.error(error);
      res.status(500).send("Erreur serveur");
    }
  },
};

export default homeController;
