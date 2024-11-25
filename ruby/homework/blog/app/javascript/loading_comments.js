$(function(){
    console.log('jQuery is working!');


    // Dynamic content loading for comments
    $('#load-comments').on('click', function() {
        console.log("Hello")
        const categoryId = $('#load-comments').data('category');
        const articleId = $('#load-comments').data('article');

        const url = `/categories/${categoryId}/articles/${articleId}/comments`;
        $.getJSON(url, function(data){
            console.log(data);
            // Append the new comments to the container #comments
        })
            // add .fail callback to handle error messaging
        });
});