import dataMapper from "../models/dataMapper.js";

const shopController = {
  shopPage: (req, res, next) => {
    res.render("shop", { style: "shop" });
  },

  thanksPage: (req, res, next) => {
    res.render("thankyou", { style: "shop" });
  },

  formPart: async (req, res, next) => {
    const clientDataMsg = req.body;
    console.log(clientDataMsg);
    // Check informations format
    const errors = {};
    let isOk = true;

    if (!clientDataMsg.first_name) {
      isOk = false;
      errors.first_name = "Le prénom est obligatoire";
    }
    if (!clientDataMsg.last_name) {
      isOk = false;
      errors.last_name = "Le nom est obligatoire";
    }
    if (!clientDataMsg.email) {
      isOk = false;
      errors.email = "L'email est obligatoire au format nom@mail.com";
    }
    if (!clientDataMsg.message || clientDataMsg.message.length > 1500) {
      isOk = false;
      errors.message =
        "Le message est obligatoire et doit faire au maximum 1 500 caractères";
    }
    if (!isOk) {
      res.render("shop", {
        style: "shop",
        data: clientDataMsg,
        errors,
      });
    } else {
      try {
        const pushData = await dataMapper.sendClientMsg(clientDataMsg);
        res.redirect("/boutique/merci#contact-form");
      } catch (error) {
        console.error(error);
        res.status(500).send("Erreur serveur");
      }
    }
  },
};

export default shopController;
