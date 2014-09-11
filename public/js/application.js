$(document).ready(function() {

  $("#my_recipes_button").on("click", function() {
    $("#current_user_cookbook").css( "display", "block");
  });

  // TODO: Use AJAX to post ingredient data to database from recipe form after user adds additional ingredient fields. (Is this an appropriate use of AJAX? To post data from fields that weren't there when page was initially loaded?)

});
