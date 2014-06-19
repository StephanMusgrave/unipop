$(document).ready(function() {
  var listingId = $('#map').data('listing-id');
  $.get('/listings/' + listingId + '.json', function(listing) {
    listing_info = listing;
    init_map_distance();
  });
  
  $('#listing-map-modal').on('shown.bs.modal', function () {
      map.refresh();
  });

  map = new GMaps({
    div: '#map',
    lat: 51.5072,
    lng: -0.1275
  });
  
  function init_map_distance() {
    GMaps.geocode({
      address: listing_info.location,
      callback: function(results, status) {
        if (status == 'OK') {
          var latlng = results[0].geometry.location;
          map.setCenter(latlng.lat(), latlng.lng());
          map.addMarker({
            lat: latlng.lat(),
            lng: latlng.lng()
          });

          GMaps.geolocate({
            success: function(position) {
              user_lat = position.coords.latitude;
              user_lng = position.coords.longitude;
                $("#distance").text('Distance: ' + haversine(latlng.lat(), latlng.lng(), user_lat, user_lng) + ' miles')
              // alert(user_lat + user_lng);
            },
            error: function(error) {
              alert('Geolocation failed: '+error.message);
            },
            not_supported: function() {
              alert("Your browser does not support geolocation");
            }
          });
        }
      }
    });
  }
});