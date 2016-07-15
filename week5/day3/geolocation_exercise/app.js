if ("geolocation" in navigator) {
  var button = $('#where-am-i');
  button.on('click', getLocation);
}else {
  alert("geolocation IS NOT available")
}

function getLocation() {
  console.log('getting location...');
  // console.log(navigator)
  navigator.geolocation.getCurrentPosition(onLocation, onError, options);
}

var options = {
  enableHighAccuracy: true,
  timeout: 5000,
  maximumAge: 0
};

function onLocation (position) {
  console.log('Your latitude is ' + position.coords.latitude);
  console.log('Your longitude is ' + position.coords.longitude);
  var lat = position.coords.latitude.toFixed(5)
  var lon = position.coords.longitude.toFixed(5)
  $('#location').text("Your position is " + lat +
  " latitude and " + lon + " longitude.")
  displayMap(lat, lon);
}

function onError (error) {
  console.log("Getting location failed" + error);
};

function displayMap(lat, lon) {
  var urlRoot = "https://maps.googleapis.com/maps/api/staticmap?center=";
  var urlParams = "&zoom=16&size=640x400";
  var url = urlRoot + lat + "," + lon + urlParams;
  $('#map').attr("src", url);
  console.log(url);
};
