GMaps.geolocate({
  success: function(position) {
    var user_lat = position.coords.latitude;
    var user_lng = position.coords.longitude;
  },
  error: function(error) {
    alert('Geolocation failed: '+error.message);
  },
  not_supported: function() {
    alert("Your browser does not support geolocation");
  }
});