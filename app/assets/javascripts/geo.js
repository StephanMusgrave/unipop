// Haversine formula calculates the distance between two points (as the crow flies),
// taking into account the curvature of the earth.
// Returns a distance value in Kilometers.
function haversine(lat1, lon1, lat2, lon2) {
	var R = 6371; // km
	var dLat = (lat2-lat1).toRad();
	var dLon = (lon2-lon1).toRad();
	var lat1 = lat1.toRad();
	var lat2 = lat2.toRad();

	var a = Math.sin(dLat/2) * Math.sin(dLat/2) +
	        Math.sin(dLon/2) * Math.sin(dLon/2) * Math.cos(lat1) * Math.cos(lat2); 
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
