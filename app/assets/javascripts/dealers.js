function sendMail()
{
  form = $('#send_mail');
  var valuesToSubmit = form.serialize();
  $.ajax(
  {
    type: "POST",
    //dataType: "json",
    url: form.attr('action'),
    data: valuesToSubmit,
    success: function(data)
    {
      $("#result").empty();
      if( data.status == 'true')
        $("#result").append( getMessageBox(data.message, 'success') );
      else
        $("#result").append( getMessageBox(data.message, 'error') );
    },
    error: function(data)
    {
      $("#result").empty();
      $("#result").append( getMessageBox( 'Виникла невідома помилка', 'error' ) );
    }
  });
}
