// $(document).ready(function(){
//   $("#searchform").submit(function(event){
//       event.preventDefault();
//       // if (!lat) {
//       //     navigator.geolocation.getCurrentPosition(getLocation);
//       // } else {
//           getVenues();
//       // }
//   });
// });
//
// // function getLocation(location) {
// //     lat = location.coords.latitude;
// //     lng = location.coords.longitude;
// // }
//
// function getVenues() {
// 	$.ajax({
//   		type: "GET",
//   		url: "https://api.foursquare.com/v2/venues/explore?ll="+ lat +","+ lng +"&client_id=HKRLGM2CST1LW4BA41XANSRU5PHQH1BN3OMAHKEUDIUXGRJ5&client_secret=XJ2E1RJDNXXH3YAXRCOH30V4EO5BYLEVZZH20HMGC3NQ302K&v=20130619&query="+$("#query").val()+"",
//   		success: function(data) {
//         console.log(data);
// 		},
//     error: function(error){
//       console.log(error)
//     }
// 	});
// }

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
