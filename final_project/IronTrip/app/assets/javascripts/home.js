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
