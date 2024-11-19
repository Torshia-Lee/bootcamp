console.log('js is loaded')

document.addEventListener("DOMContentLoaded", () => {
    const toggleButton = document.getElementById("toggle-content-button");
    const content = document.getElementById("article-content");

    toggleButton.addEventListener("click", () => {
        if (content.style.display === "none") {
            content.style.display = "block";
            toggleButton.textContent = "Hide Content";
        } else {
            content.style.display = "none";
            toggleButton.textContent = "Show Content";
        }
    })
})