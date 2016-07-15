$(function () {
    $('.form').on('submit', function(e) {
        e.preventDefault();
        $('#list').empty()
        var user_input = $('#searchbox').val()
        console.log(user_input);
        $.ajax({
            type: 'GET',
            url: 'https://api.spotify.com/v1/search?type=artist&query=' + user_input,
            success: artistController,
            error: function() {
                console.log('error!')
            },
            dataType: 'json'
        });
    });

    function artistController(data) {
        var listOfArtists = data.artists.items
        listOfArtists.forEach(function(artist) {
            var h4 = $('<h4>').text(artist.name);
            if (artist.images.length > 1) {
                var img = $('<img>').attr('src', artist.images[0].url);
            } else {
                var img = $('<img>').attr('src', 'avatar.jpg');
            }
            var li = $('<li>').append(h4);
            li.append(img);
            $('#list').append(li);
            // console.log('artist name:', artist.name);
        });
    };
});
