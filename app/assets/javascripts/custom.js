function hsModels()
{

  if( $('.model_list').height() == 200 )
  {
    $('.btn_more').html('CХОВАТИ ВСІ МОДЕЛІ');
    $('.model_list').height($('.model_list')[0].scrollHeight);
  }
  else
  {
    $('.btn_more').html('ПОКАЗАТИ ВСІ МОДЕЛІ');
    $('.model_list').height(200);
  }
}

function getMessageBox( message, type )
{
  var scriptCloseMessageBox = '<script>$(".notification-close").click(function(){$(".notification-box").fadeOut("slow");return false;});</script>';
  return '<div class="notification-box notification-box-'+type+'"><p>'+message+'</p><a href="#" class="notification-close notification-close-'+type+'">x</a></div>' + scriptCloseMessageBox;
}
