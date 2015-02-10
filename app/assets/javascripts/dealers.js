function sendMail()
{
  form = $('#send_mail');
  var valuesToSubmit = form.serialize();
  $.ajax(
  {
    type: "POST",
    dataType: "json",
    url: form.attr('action'),
    data: valuesToSubmit,
    success: function(data)
    {
      if( data.status == 'true')
        $("#result").append( getSuccessMessageBox(data.message) );
      else
        $("#result").append( getErrorMessageBox(data.message) );
    },
    error: function(data)
    {
      $("#result").append( getErrorMessageBox( 'Виникла невідома помилка' ) );
    }
  });
}
