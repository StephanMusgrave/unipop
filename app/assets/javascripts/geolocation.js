window.onload = function() {
	// Check to see if the user's browser supports GeoLocation.
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      // Pass the location data to the findNearest method.
			findNearest(position.coords.latitude, position.coords.longitude);
    });
  }
}

// Find the restaurant that is nearest to the users location.
function findNearest(lat, lon) {
  // Calculate the distances.
  var d1 = haversine(lat, lon, 40.755018, -73.992556); // 310 West 38th Street
  var d2 = haversine(lat, lon, 40.791121, -73.973971); // 2450 Broadway
  var d3 = haversine(lat, lon, 40.757498, -73.986654); // 200 West 44th Street

  // Add text to the distance labels.
  document.getElementById("location1distance").textContent = "Distance: " + d1 + " miles";
  document.getElementById("location2distance").textContent = "Distance: " + d2 + " miles";
  document.getElementById("location3distance").textContent = "Distance: " + d3 + " miles";

  // Find the smallest distance.
  if (d1 <= d2 && d1 <= d3) {
    // Location 1
    document.getElementById("location1").className = "nearest";
  } else if (d2 <= d1 && d2 <= d3) {
    // Location 2
    document.getElementById("location2").className = "nearest";
  } else {
    // Location 3
    document.getElementById("location3").className = "nearest";
  }
}
