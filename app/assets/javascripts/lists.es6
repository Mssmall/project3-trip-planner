$(document).ready(function(){
  $(".clicky").on('click', function() {
    $('.showy').removeClass('showy')
    let a = $(this).attr("data-lname")
    $(`.info-${a.split(' ')[0]}`).addClass('showy')
  })
})
