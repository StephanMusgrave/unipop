$(document).ready(function(){
  var distance_from = $('#distance').data('listing-id');
	GMaps.geocode({
	  address: listing.location,
	  callback: function(results, status) {
	    if (status == 'OK') {
	      var latlng = results[0].geometry.location;
	      var @want_listing_lat = latlng.lat(),
	      var @want_listing_lng = latlng.lng();
	    }
	  });


	// Haversine formula calculates the distance between two points (as the crow flies),
	// taking into account the curvature of the earth.
	// Returns a distance value in Kilometers.
	function haversine(user_lat, user_lng, want_listing_lat, want_listing_lng) {
	  var R = 6371; // km
	  var dLat = (want_listing_lat-user_lat).toRad();
	  var dLon = (want_listing_lng-user_lng).toRad();
	  var lat1 = user_lat.toRad();
	  var lat2 = want_listing_lat.toRad();

	  var a = Math.sin(dLat/2) * Math.sin(dLat/2) +
	          Math.sin(dLon/2) * Math.sin(dLon/2) * Math.cos(user_lat) * Math.cos(@want_listing_lat); 
	  var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
	  var d = R * c; // Kilometers
	  var m = d * 0.621371192; // Miles

	  var rounded = roundVal(m);

	  return rounded;
	}

	// Converts numeric degrees to radians
	if (typeof Number.prototype.toRad == 'undefined') {
	  Number.prototype.toRad = function() {
	    return this * Math.PI / 180;
	  }
	}

	// Rounds a number to 2 decimal places
	function roundVal(val) {
	  var dec = 2;
	  var result = Math.round(val*Math.pow(10,dec))/Math.pow(10,dec);
	  return result;
	}
});


