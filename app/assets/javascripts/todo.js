$(function() {

  function buildHTML(message){
    var html = `${message.title}<br>`
    return html
  }
  $("#new_todo").on("submit",function(e){
    e.preventDefault()
    var message = new FormData(this);

    $.ajax({
      url: "/todos",
      type: 'POST',
      data: message,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      debugger
      $('#todos').append(html);
      $('#todo_title').val('');
      $("#subbtn").prop("disabled", false);
    })
  })
})