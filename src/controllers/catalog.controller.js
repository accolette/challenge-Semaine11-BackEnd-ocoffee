import dataMapper from "../models/dataMapper.js";

const catalogController = {
  catalogPage: async (req, res, next) => {
    try {
      let products = await dataMapper.findAllProducts();
      if (!products || products.length === 0) {
        return res.status(404).send("Aucune donnée trouvé");
      }
      res.render("catalog", { style: "catalog", products });
    } catch (error) {
      console.error(error);
      res.status(500).send("Erreur serveur");
    }
  },
};

export default catalogController;
