var fs = require('fs');
function fileActions(err, file){
    if (err) {
        throw err;
    }
    var thornes = JSON.parse(file);

    function highRated(value) {
      return value.rating >= 8.5;
    }
    var episodes = thornes.filter(highRated);

    episodes.sort(function(a, b){
      return a.episode_number - b.episode_number
    })

    for (var x = 0; x < episodes.length; x++) {

    var ratingStar = ''
    for (var i = 0; i <= episodes[x].rating; i++) {
      ratingStar = ratingStar.concat('*');
    }
    console.log('Title: ' + episodes[x].title, 'Episode #' + episodes[x].episode_number + '\n' + episodes[x].description  + '\n' +'Rating ' + episodes[x].rating + ratingStar + '\n');
    }
}
fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);
