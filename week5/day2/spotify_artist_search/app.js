$(function () {
    $('.form').on('submit', function(e) {
        e.preventDefault();
        var user_input = $('#searchbox').val()
        console.log(user_input);
        $.ajax({
            type: 'GET',
            url: 'https://api.spotify.com/v1/search?type=artist&query=' + user_input,
            success: handleResponse,
            error: function() {
                console.log('error!')
            },
            dataType: 'json'
        });
    });

    function handleResponse(data) {
        var listOfArtists = data.artists.items
        listOfArtists.forEach(function(artist) {
            var h5 = $('<h5>').text(artist.name);
            // console.log(h5);
            if (artist.images.length > 1) {
                var img = $('<img>').attr('src', artist.images[0].url);
            } else {
                var img = $('<img>').attr('src', 'avatar.jpg');
            }
            var li = $('<li>').append(h5);
            li.append(img);
            $('#list').append(li);
            console.log('artist name:', artist.name);
        });
    };
});
