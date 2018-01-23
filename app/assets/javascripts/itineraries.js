$(document).ready(function(){
  $(".clicky").on('click', function() {
    $('.showy').removeClass('showy')
    let a = $(this).attr("data-lname")
    $(`.info-${a.split(' ')[0]}`).addClass('showy')
  })

  $(".clicky2").on('click', function() {
    $('.showy2').removeClass('showy2')
    let a = $(this).attr("data-lname2")
    $(`.dinfo-${a.split(' ')}`).addClass('showy2')
  })

})
