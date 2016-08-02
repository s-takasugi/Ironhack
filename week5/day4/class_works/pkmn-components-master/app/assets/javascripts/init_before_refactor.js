$(function() {
  $('.js-show-pokemon').on('click', function(e) {
    var clickedEl = $(e.currentTarget)
    var url =  clickedEl.data('pokemon-uri')
    $.ajax({
      type: 'GET',
      url: url,
      success: function(pokemonData) {
        $('.js-pokemon-name').text(pokemonData.name);
        $('.js-pokemon-id').text('#' + pokemonData.national_id);
        $('.js-pokemon-height').text(pokemonData.height);
        $('.js-pokemon-weight').text(pokemonData.weight);
        $('.modal').modal('show')
      },
      error: function() {
          console.log('no pokemon!')
      },
    });
  });
})
