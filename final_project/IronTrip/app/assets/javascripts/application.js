// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
  // $("#searchform").submit(function(event){
  //   event.preventDefault();
  //   $('.venue_list').empty()
  //   $('.event_list').empty()
  //   getVenues();
  //   getEvents();
  // });


  // $(".scheduler").on("drag", function(){
  //   createInstances()
  // })

  createScheduler();

  if ($('body').attr('id') == 'devise/sessions-new') {
    drawTag();
  }

  $('#sortable').sortable({
    revert: true,
  });
  $('.hour').sortable({
    revert: true,
    items: "tr:not(.item-block)"
  });
  $('.item-block').draggable({
    connectToSortable: "#sortable, .hour",
    cursor: "pointer",
    stack: ".item-block",
  });
  $( ".droppable" ).droppable({
    drop: function( event, ui ) {
      console.log('dragged')
      day = this.getAttribute('data-day')
      time = this.getAttribute('data-time')
    }
  });
});

function createScheduler() {
  var ul = $('<ul class="hour">');
  for (var i = 6; i < 25; i++) {
    var time=([i] + ':00');
    var ul = $('<ul class="hour droppable" data-day=1 data-time=' + i + '>').text(time);
    $('.scheduler').append(ul);
  };
}

// function saveScheduler() {
//   for
// }


// Date.prototype.yyyymmdd = function() {
//   var mm = this.getMonth() + 1;
//   var dd = this.getDate();
//   return [this.getFullYear(), !mm[1] && '0', mm, !dd[1] && '0', dd].join('');
// };

// var date = new Date();
// date.yyyymmdd();

// function getVenues() {
// 	$.ajax({
// 		type: "GET",
// 		url: "https://api.foursquare.com/v2/venues/explore?near="+ $("#query").val() +"&limit=50&client_id=HKRLGM2CST1LW4BA41XANSRU5PHQH1BN3OMAHKEUDIUXGRJ5&client_secret=XJ2E1RJDNXXH3YAXRCOH30V4EO5BYLEVZZH20HMGC3NQ302K&v=20160725",//+ date.yyyymmdd(),
// 		success: venueController,
//     error: function(error){
//       console.log("Did you type in correctly?")
//     },
//     dataType: "json"
// 	});
// }
//
// function venueController(data) {
//   var venueTitle = $('<h4>').text("Venues");
//   var bigBox = $('<div class="col-sm-4 big_box">').append(venueTitle);
//   $('.venue_list').append(bigBox)
//   data.response.groups[0].items.forEach(function(item) {
//     var itemName = $('<p class="venue_name">').text(item.venue.name);
//     var itemAddress = $('<p class="venue_address">').text(item.venue.location.address + ', ' + item.venue.location.city);
//     var itemCategory = $('<p class="venue_category">').text(item.venue.categories[0].name);
//     var smallBox = $('<div class="sml_box">').append(itemName);
//     smallBox.append(itemAddress);
//     smallBox.append(itemCategory);
//     var venueIdKey = item.venue.id
//     getVenuePhotos();
//     function getVenuePhotos() {
//       $.ajax({
//         type: "GET",
//         url: "https://api.foursquare.com/v2/venues/"+ venueIdKey +"/photos?&client_id=HKRLGM2CST1LW4BA41XANSRU5PHQH1BN3OMAHKEUDIUXGRJ5&client_secret=XJ2E1RJDNXXH3YAXRCOH30V4EO5BYLEVZZH20HMGC3NQ302K&v=20160725",
//         success: photoController,
//         error: function(error){
//           console.log("No photos found...")
//         },
//         dataType: "json"
//       });
//       function photoController(data) {
//         var photoItem = data.response.photos.items[0]
//         var img = $('<img class="venue_thumbnail">').attr('src', photoItem.prefix+Math.round(photoItem.height/2)+'x'+Math.round(photoItem.width/2)+photoItem.suffix)
//         smallBox.append(img);
//       };
//     };
//     bigBox.append(smallBox);
//   });
// };
//
// function getEvents() {
//   $.ajax({
//     type: "GET",
//     url: "http://api.eventful.com/json/events/search?app_key=DTvpFhpWPB3xrVQK&image_sizes=large,block200&sort_order=popularity&page_size=50&location=" + $("#query").val(),
//     success: eventController,
//     error: function(error){
//       console.log("Are you sure you don't have a typo?");
//     },
//     dataType: "jsonp"
//   });
// }
//
// function eventController(data) {
//   var eventTitle = $('<h4>').text("Events");
//   var bigBox = $('<div class="col-sm-4 big_box">').append(eventTitle);
//   $('.event_list').append(bigBox)
//   data.events.event.forEach(function(item) {
//     var itemTitle = $('<p class="event_title">').text(item.title);
//     var itemName = $('<p class="event_name">').text(item.venue_name);
//     var itemAddress =$('<p class="event_address">').text(item.venue_address + ', ' +item.city_name);
//     if (item.image.large.url == nil) {
//       var img = $('<img class="event_thumbnail">').attr('src', "dummy.jpg");
//     } else {
//       var eventPhoto = item.image.large.url;
//       var img = $('<img class="event_thumbnail">').attr('src', eventPhoto);
//     }
//     var smallBox =$('<div class="sml_box">').append(img);
//     smallBox.append(itemTitle);
//     smallBox.append(itemName);
//     smallBox.append(itemAddress);
//     bigBox.append(smallBox);
//   });
// };

function drawTag() {
  var canvas = $('#login-tag-canvas');
  var ctx = canvas[0].getContext("2d");
  console.log(canvas)
  console.log(ctx);
  ctx.moveTo(1,1);
  ctx.lineTo(415,1);
  ctx.moveTo(415,1);
  ctx.lineTo(499,85);
  ctx.moveTo(499,85);
  ctx.lineTo(499,215);
  ctx.moveTo(499,215);
  ctx.lineTo(415,299);
  ctx.moveTo(415,299);
  ctx.lineTo(1,299);
  ctx.moveTo(1,299);
  ctx.lineTo(1,1);

  ctx.moveTo(10,10);
  ctx.lineTo(410,10);
  ctx.moveTo(410,10);
  ctx.lineTo(490,90);
  ctx.moveTo(490,90);
  ctx.lineTo(490,210);
  ctx.moveTo(490,210);
  ctx.lineTo(410,290);
  ctx.moveTo(410,290);
  ctx.lineTo(10,290);
  ctx.moveTo(10,290);
  ctx.lineTo(10,10);
  ctx.strokeStyle = '#fff';
  ctx.lineWidth = 2;
  ctx.stroke();

  ctx.beginPath();
  ctx.arc(450,150,12,0,2*Math.PI);
  ctx.lineWidth = 2;
  ctx.strokeStyle = '#fff';
  ctx.stroke();
};
