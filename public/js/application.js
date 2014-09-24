$(document).ready(function() {

  $("#add_ingredient").on("click", function(event) {

    $.ajax({
      url: "/ingredient/new"
    }).done(function( ingredientForm ) {
        $( "div#ingredients" ).append( ingredientForm );
    });

  });

});




  // $("#my_recipes_button").on("click", function() {
  //   $("#current_user_cookbook").css( "display", "block");
  // });

  // TODO: Use AJAX to post ingredient data to database from recipe form after user adds additional ingredient fields. (Is this an appropriate use of AJAX? To post data from fields that weren't there when page was initially loaded?)

  // Notes from talking to coach, Jared.

  // ajax is used to add content to the current page without reloading.

  // // Example: I would write something like the following to edit a recipe and have the edits show up on the same page without refresh.

  // $('#new_recipe').on('submit',
  //   function(e) {
  //     // prevent default (post in ruby controller and redirect/reload)
  //     e.preventDefault();

  //     //assign needed vars
  //     var name = $("#id").val(); // .val gets value contents of tag

  //     // ajax call: says to get, post, etc. to the route specified. Then ruby implements whatever is in its controller for the route (i.e. saving data to database)
  //     $.ajax({
  //       method:'post',
  //       url:'route goes here'
  //       data: {recipe: name: r name},
  //       dataType: JSON

  //     //when that's done... the following will happen.
  //     }).success( function(data)
  //     $("#recipe_list").append(<li>asjdflajsdf</li>)
  //     )

  // });

  // Object orientedness comes in when there is repetitive code in the above. Can create objects, functions for these objects, and variables outside of the document ready, and call them from inside document ready.
