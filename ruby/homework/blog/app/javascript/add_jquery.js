console.log("Jquery is loaded")

$(document).ready(function () {
    const toggleButton = $("#toggle-content-button");
    const content = $("#article-content");

    toggleButton.on("click", function () {
        if (content.css("display") === "none") {
            content.css("display", "block");
            toggleButton.text("Hide Content");
        } else {
            content.css("display", "none");
            toggleButton.text("Show Content");
        }
    });
});