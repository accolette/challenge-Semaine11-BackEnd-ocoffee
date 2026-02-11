const homeController = {
  homePage(req, res, next) {
    res.render("home", { style: "home" });
  },
};

export default homeController;
