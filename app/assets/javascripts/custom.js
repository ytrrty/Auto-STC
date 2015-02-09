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

$(function(){
  $(".alert-message").delegate("a.close", "click", function(event) {
    event.preventDefault();
    $(this).closest(".alert-message").fadeOut(function(event){
      $(this).remove();
    });
  });
});
