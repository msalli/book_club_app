$(document).ready(function() {

  // photo enlarge, popover box on index page
  $(".fancybox")
      .attr('rel', 'gallery')
      .fancybox({
        helpers: {
          title: {
            type: 'inside',
          }
        },
        beforeLoad: function() {
          this.title = $(this.element).attr('title');
        }
      });

  //modal?
  $(".modal").hide();

  $(".close").on("click", function() {
      $(".modal").hide();
  });


  // index page search bar
  $("#search-bar").on("submit", function(e) {
    e.preventDefault();

    var result = $("#_search").val();
    var formURL = $(this).attr("action");
    console.log(result);
    console.log(formURL);

    function searchIt() {
      $.ajax({
        type: 'GET',
        url: formURL,
        dataType: "json",
        data: { search: result },
        success: function(data) {
          console.log("Success with data", data);
          // clear form
          $(".search-db").val("");
              $(".modal").show();
              if (data[0] !== undefined) {
                $(".book-title").html(data[0].title);
                $(".book-author").html(data[0].author);
              } else {
                $(".error").html("Your search didn't match any titles in our database.");
              }
        },
        error: function(data) {
          console.log("ERROR");
        }
      });
    }

    searchIt();

  });



  // show page
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

  // show page
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
  // reviews
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

  $("#discussions").hide();

  $(".comment-body").hide();

  $(".comment-link").on("click", function(e) {
    e.preventDefault();
    $(".comment-body").show();
  });

  $("#spoilers").on("click", function(e) {
    e.preventDefault();
     $("#discussions").show();
  });




}); //closing document ready