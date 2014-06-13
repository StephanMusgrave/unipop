$(document).ready(function(){
  var listingId = $('#map').data('listing-id');

  if(listingId) {
    $.get('/listings/' + listingId + '.json', function(listing){
      map = new GMaps({
        div: '#map',
        lat: 51.365,
        lng: -0.095
      });

      GMaps.geocode({
        address: listing.location,
        callback: function(results, status) {
          if (status == 'OK') {
            var latlng = results[0].geometry.location;
            map.setCenter(latlng.lat(), latlng.lng());
            map.addMarker({
              lat: latlng.lat(),
              lng: latlng.lng()
            });
          }
        }
      });
    })
  }
});
