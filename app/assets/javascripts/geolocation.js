// Find the restaurant that is nearest to the users location.
function findNearest(lat1, lon1) {
  // Calculate the distances.
  var distance = haversine(lat1, lon1, latlng.lat, latlng.lng); // 310 West 38th Street

  // Add text to the distance labels.
  document.getElementById("distance").textContent = "Distance: " + distance + " miles";

