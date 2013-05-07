$(document).ready(function()
{

    setInterval(function() {
        Gmaps.map.createMarker({
           Lat: Gmaps.map.userLocation.lat(),
           Lng: Gmaps.map.userLocation.lng(), 
           rich_marker: null, 
           title: "My Location",
           marker_picture: "http://maps.google.com/mapfiles/arrow.png",
           marker_width: 34,
           marker_height: 39,
           marker_anchor: null,
           shadow_anchor: null,
           shadow_picture: null,
           shadow_width: null,
           shadow_height: null
       })}, 0);
  });