$(document).ready(function() {


  // home page
  $(".popover").hide();

  $(".books").on("click", ".book", function() {
    console.log(this);
  });


  // show page

  $(".new_comment").on("submit", function(e) {
    e.preventDefault();

    var title = $("#title-val").val();
    var body = $("#body-val").val();
    var formURL = $('.new_comment').attr("action");
    console.log(title);
    console.log(body);
    console.log(formURL);

    function commentsToPage() {
      $.ajax({
        type: 'POST',
        url: formURL,
        data: { comment: {title: title, body: body} },
        success: function(data) {
          console.log("Success with data");
          console.log(data);

          //append comments to page
          $(".comment-title").append(data.title);
          $(".comment-body").append(data.body);

          //reset form values
          $("#title-val").val("");
          $("#body-val").val("");
        },
        error: function(data) {
          console.log("there was an error");
        }
      });
    }

    commentsToPage();

  });





}); //closing document ready