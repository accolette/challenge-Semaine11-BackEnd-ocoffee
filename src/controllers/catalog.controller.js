import dataMapper from "../models/dataMapper.js";

const catalogController = {
  // SHOW ALL PRODUCTS
  catalogPage: async (req, res, next) => {
    try {
      let products = await dataMapper.findAllProducts();
      if (!products || products.length === 0) {
        return res.status(404).send("404 : Aucune donnée trouvé");
      }
      res.render("catalog", { style: "catalog", products });
    } catch (error) {
      console.error(error);
      res.status(500).send("Erreur serveur");
    }
  },

  // SHOW DETAIL FOR ONE PRODUCT
  productPage: async (req, res, next) => {
    let productId = Number(req.params.id);
    if (!productId) {
      return next();
    }
    try {
      const product = await dataMapper.findOneProduct(productId);
      if (!product) {
        return next();
      }
      res.render("product.ejs", { style: "product", product });
    } catch (error) {
      console.error(error);
      res.status(500).send("Erreur serveur");
    }
  },
};

export default catalogController;
