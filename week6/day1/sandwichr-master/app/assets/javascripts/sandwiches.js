$(function() {

  $('button').on('click', function(e) {
    e.preventDefault();
    var ingredient_id = $(this).attr("class");
    var sandwich_id = (window.location.href.split('/'))[4]

    $.ajax({
      type: 'POST',
      url: 'http://localhost:3000/sandwiches/'+sandwich_id+'/ingredients/add',
      data: {ingredient: ingredient_id},
      success: function(response) {
        console.log('success')
        var ingredient_name = response.name
        // console.log(response.name);
        var new_ingredient = '<li>' + ingredient_name + '</li>'
        $('ul').append(new_ingredient)
      },
      error: function() {
        console.log('error!');
      }
    })
  })
})
