initSeeAllProducts();

function initSeeAllProducts() {
  const buttonSeeAll = document.getElementById("see-all-products-button");
  const articles = document.getElementById("articles-list");

  buttonSeeAll.addEventListener("click", () => {
    articles.classList.toggle("only-display-3-articles");
  });
}
