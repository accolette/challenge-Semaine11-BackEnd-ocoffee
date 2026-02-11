const shopController = {
  shopPage(req, res, next) {
    res.render("shop", { style: "shop" });
  },
};

export default shopController;
