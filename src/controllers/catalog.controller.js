const catalogController = {
  catalogPage(req, res, next) {
    res.render("catalog", { style: "catalog" });
  },
};

export default catalogController;
