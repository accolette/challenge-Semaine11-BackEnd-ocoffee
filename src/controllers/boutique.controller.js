const boutiqueController = {
  boutiquePage(req, res, next) {
    res.render("shop", { style: "shop" });
  },
};

export default boutiqueController;
