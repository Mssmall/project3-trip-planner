$(document).ready(function(){
  $(".clicky").on('click', function() {
    $('.showy').removeClass('showy').addClass('hidey');
    let a = $(this).attr("data-lname") //Return the value at the named data store and save as variable a
    $(`.info-${a.split(' ')[0]}`).removeClass('hidey').addClass('showy') // take value stored in var a and split value, take first element and find div class that matches element. Show div when clicked on.
  })

})
