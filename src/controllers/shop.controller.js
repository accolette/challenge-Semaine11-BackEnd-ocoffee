const shopController = {
  shopPage: (req, res, next) => {
    res.render("shop", { style: "shop" });
  },

  thanksPage: (req, res, next) => {
    res.render("thankyou", { style: "home" });
  },

  formPart: (req, res, next) => {
    const { first_name, last_name, email, message } = req.body;
    console.log(first_name);
    // Check informations format
    const errors = {};
    let isOk = true;

    if (!first_name) {
      isOk = false;
      errors.first_name = "Le prénom est obligatoire";
    }
    if (!last_name) {
      isOk = false;
      errors.last_name = "Le nom est obligatoire";
    }

    res.redirect("/boutique/merci");
  },
};

export default shopController;
