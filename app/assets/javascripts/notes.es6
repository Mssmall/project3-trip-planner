$(document).ready(function(){
  $(".clicky").on('click', function() {
    $('.showy').removeClass('showy').addClass('hidey');
    let a = $(this).attr("data-lname")
    let something = $(`.info-${a.replace(/ /g, "-")}`).removeClass('hidey').addClass('showy')
  });
})
