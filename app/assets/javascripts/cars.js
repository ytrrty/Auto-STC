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
      loadDealersMap();
    },
    error: function(data)
    {
      $("#result").append( getErrorMessageBox( 'Виникла невідома помилка' ) );
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
    if(true)
    {
      var gmap = $("#t_dealers").data("gmap");
      var center = gmap.gmap.getCenter();
      google.maps.event.trigger(gmap.gmap, "resize");
      gmap.gmap.setCenter(center);
    }
  }
});
});
