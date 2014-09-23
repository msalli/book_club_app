$(document).ready(function() {


  // home page
  $(".popover").hide();

  $(".books").on("click", ".book", function() {
    console.log(this);
  });


  // for "I've Read It!" button
  $(".read-it").on("submit", function(e) {
    e.preventDefault();

    var read = $(".read-val").val();
    var formURL = $(this).attr("action");

    function readIt() {
      $.ajax({
        type: 'POST',
        url: formURL,
        data: { favorite: { status: read }},
        success: function(data) {
          console.log("Success with data", data);

          //append to page
          $("#book-status").append("Saved!");
        },
        error: function(data) {
          console.log("ERROR");
        }
      });
    }

    readIt();

  });


    // for "Add to Queue" button
    $(".queue-it").on("submit", function(e) {
      e.preventDefault();

      var queue = $(".queue-val").val();
      var formURL = $(this).attr("action");

      function addQueue() {
        $.ajax({
          type: 'POST',
          url: formURL,
          data: { favorite: { status: queue }},
          success: function(data) {
            console.log("Success with data", data);

            // append to page
            $("#book-status").append("Added to queue!");
          },
          error: function(data) {
            console.log("ERROR");
          }
        });
      }

      addQueue();

    });


  // show page
  $(".new_comment").on("submit", function(e) {
    e.preventDefault();

    var title = $("#title-val").val();
    var body = $("#body-val").val();
    var formURL = $('.new_comment').attr("action");

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