$(document).ready(function(){
  GMaps.geolocate({
    success: function(position) {
      user_lat = position.coords.latitude;
      user_lng = position.coords.longitude;
      // alert(user_lat + user_lng);
    },
    error: function(error) {
      alert('Geolocation failed: '+error.message);
    },
    not_supported: function() {
      alert("Your browser does not support geolocation");
    }
  });
});