var URL = `https://www.omdbapi.com/?apikey=${apiKey}&t=`


$(document).ready(function () {

    // add click function & logic for AJAX request here
    $("#button").click(function (){
        event.preventDefault()
        $('#movie-list').empty()
        // 1. Enter details of a movie 
        // 1a. Save user input into variables 
        var movie = $("#title").val();
        var genre = $("#genre").val();
        var year = $("#year").val();
    
        
        // 2. Store the entered movie into localStorage 
        // 2a. Use object to store 
        var movieObject = {
            objectMovie: movie,
            objectGenre: genre,
            objectYear: year
        }
        var movieList = []

        if (localStorage.movies) {
            var storageArray = JSON.parse(localStorage.movies)
            for (var movieIndex in storageArray)  {
                if(movie == storageArray[movieIndex]['objectMovie'] && genre == storageArray[movieIndex]['objectGenre']) {
                alert('This movie is already in your list!')
                } 
                $('#movie-list').append('<li>' + storageArray[movieIndex]['objectMovie'] + '</li>')
                }
            } else {
                storageArray.push(movieObject)
                localStorage.movies = JSON.stringify(storageArray)
                for (var movieIndex in storageArray)  {
                    $('#movie-list').append('<li>' + storageArray[movieIndex]['objectMovie'] + '</li>')
                }
            }
            

        // 3. Display a list of stored movies 

        $.ajax({
            url: URL + movie,
            method: "GET",
            success: function(data){
                // 4. Fetch movie data from API
                //4a. Display movie poster 
                $('#movie-data').append('<p>' + data + '</p>' )
                var posterUrl = data['Poster']
                $('#movie-data').append("<img src=" + posterUrl + ">" )
            },

            error: function(xhr){
                $('#error-message').empty()
                $('#weather-info').empty()
                $('html').css({'background-color': 'black'})

                var status = xhr.status;
                
                // Check if xhr.responseJSON exists and has the 'Error' field, otherwise, provide a generic error message.
                var errorMessage = (xhr.responseJSON && xhr.responseJSON.Error) 
                                    ? xhr.responseJSON.Error 
                                    : "An unknown error occurred.";
            
                $('#error-message').append("<p> Error: " + status + 
                ' (Not found)' +'</p>');

                
            }
        })
    })

    

    

    

    // do not forget to hide API key 
});
