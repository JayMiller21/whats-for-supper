$(document).ready(function() {

  // var addIngredientFormPartial = function (event) {

  //   $.ajax({
  //     url: "/ingredient/new"
  //   }).done(function( html ) {
  //       $( "div#new_ingredients" ).append( html );
  //   });

  // };

  $("#add_ingredient").on("click", function(event) {

      $.ajax({
        url: "/ingredient/new"
      }).done(function( html ) {
          $( "div#new_ingredients_form_section" ).append( html );
      });

  });

  // var saveNewRecipe = function (event) {

  //   event.preventDefault()

  //   $.ajax({
  //     type: "POST",
  //     url:'/recipe/new',
  //     dataType: "json",
  //     data:$("#new_recipe_form").serialize()
  //   }).done(function( html ) {
  //     console.log("Recipe Created!")
  //   });

  // }

  $("#new_ingredients_form_section").on('submit', ".single_ingredient_form_partial", function (event) {

    event.preventDefault()

    $.ajax({
      type: "POST",
      url:'/recipe/new',
      dataType: "json",
      data:$("#new_recipe_form").serialize()
    }).done(function( html ) {
      console.log("Recipe Created!")
    });

    });

  $("#add_comment_to_recipe").on('submit',function(event) {

    event.preventDefault();

    var recipeId = $("#add_comment_to_recipe").attr("name");

    $.ajax({
      type: "POST",
      url: "/recipe/" + recipeId + "/comment/new",
      dataType: "json",
      data:$("#add_comment_to_recipe").serialize()
    }).done(function(response){
      $("#comments_display").append("<li><div id='comment_box'><p>" + response.comment + "</p></div></li><br>"
        )
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
