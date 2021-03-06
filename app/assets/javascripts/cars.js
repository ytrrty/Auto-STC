function loadConfiguration( id )
{
  $.ajax(
  {
    type: "POST",
    dataType: "json",
    url: '/configuration/'+id,
    beforeSend: function() { $("body").addClass("loading"); },
    complete: function() { $("body").removeClass("loading"); },
    success: function(data)
    {
      $("#t_dealers").html(data.dealers);
      $("#t_features_s").html(data.features_s);
      $("#t_features_t").html(data.features_t);
      $("#t_engine").html(data.engine);
      $("#t_dynamic").html(data.dynamic);
      $("#t_view").html(data.view);
      loadDealersMap();
    },
    error: function(data)
    {
      $("#result").append( getMessageBox( 'Виникла невідома помилка', 'error' ) );
    }
  });
}

//this fix the problem with not completely map
$(document).ready(function()
{
  $('ul.tabs li').click(function(e)
{
  if( $(this).attr('id') == 'map')
  {
    e.preventDefault();
    $('.tabcontent').hide();
    $("#t_dealers").show();
    var gmap = $("#t_dealers").data("gmap");
    var center = gmap.gmap.getCenter();
    google.maps.event.trigger(gmap.gmap, "resize");
    gmap.gmap.setCenter(center);
  }
});
});
