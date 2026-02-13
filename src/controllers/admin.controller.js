import dataMapperAdmin from "../models/dataMapperAdmin.js";

const adminController = {
  adminPage: async (req, res, next) => {
    try {
      let clientsMessages = await dataMapperAdmin.findClientsMessages();
      if (!clientsMessages || clientsMessages.length === 0) {
        return res.status(404).send("404 : Aucune donnée trouvé");
      }
      res.render("admin", { style: "admin", clientsMessages });
    } catch (error) {
      console.error(error);
      res.status(500).send("Erreur serveur");
    }
  },
};

export default adminController;
