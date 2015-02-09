ready = ->
  $("#mail")
    .on "ajax:success", (e, data, status, xhr) ->
      $("#result").val('<div class="alert-message error"><div class="box-icon"></div><p>'+xhr.responseText+'<a href="" class="close">&times;</a></div>')
    .on "ajax:error", (e, xhr, status, error) ->
      $("#result").val('<div class="alert-message error"><div class="box-icon"></div><p>'+error+'<a href="" class="close">&times;</a></div>')

$(document).ready(ready)
