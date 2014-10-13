$(document).ready(function() {

  // fancybox popover on index page
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

  // hide modals
  $("#myModal").hide();
  $("#azModal").hide();

  // close functionality on modals
  $(".close").on("click", function() {
      $("#myModal").hide();
      $(".error").html("");
      $(".book-title").html("");
      $(".book-author").html("");
      $(".book-image").html("");
      $(".book-link").html("");
  });

  $(".close").on("click", function() {
    $("#azModal").hide();
  })


  // amazon search
  $(".amazon-link").on("click", function(e) {
    e.preventDefault();

    $("#azModal").show();
  });


  // nav search bar
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
              $("#myModal").show();
              if (data[0] !== undefined) {
                $(".book-title").html(data[0].title);
                $(".book-author").html(data[0].author);
                $(".book-image").append("<img src=" + data[0].lg_img + " width='175' height='265'>");
                $(".book-link").append("<a href='/books/" + data[0].id + "'>See more...</a>");
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

  $(".discussions-hidden").hide();

  $("#header-bottom-discussions").on("click", function(e) {
    $(".right-panel").hide();
    $(".discussions-hidden").show();

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
          $(".comment-link").append(data.title);
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


  $(".comment-body").hide();
  $(".comment-on-comment").hide();

  $(".comment-toggle").each(function(index, value) {
    $(value).click(function() {
      console.log(value);
       $(".comment-on-comment").show();
       $(".comment-body").show();


    });
  });





}); //closing document ready