$(document).ready(function() {

  $(".popover").hide();

  $(".books").on("click", ".book", function() {
    console.log(this);
  });

}); //closing document ready