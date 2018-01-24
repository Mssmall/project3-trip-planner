$(document).ready(function(){
  $(".clicky").on('click', function() {
    $('.showy').removeClass('showy').addClass('hidey');
    let a = $(this).attr("data-lname")
    $(`.info-${a.split(' ')[0]}`).removeClass('hidey').addClass('showy')
  })

  // function() {
  //   $(".scroll").niceScroll();
  //
  // }

})
