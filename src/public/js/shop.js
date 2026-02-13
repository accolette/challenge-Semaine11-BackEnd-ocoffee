initSeeAllContent();

function initSeeAllContent() {
  const buttonSeeAll = document.getElementById("see-all-content-button");
  const article = document.getElementById("atmosphere-description");
  const buttonSeeAll2 = document.getElementById("see-all-content-button2");
  const article2 = document.getElementById("makers-description");

  buttonSeeAll.addEventListener("click", () => {
    article.classList.toggle("only-display-3-p");
  });

  buttonSeeAll2.addEventListener("click", () => {
    article2.classList.toggle("only-display-3-p");
  });
}
