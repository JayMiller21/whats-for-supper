$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $("#my_recipes_button").on("click", function() {
    $("#current_user_cookbook").css( "display", "block");
  });

  // AJAX post example:
  // $('button#add_question').click(function(event){
  //   question_counter ++;
  //   event.preventDefault();
  //   $.ajax({
  //     url: '/question/new',
  //     method: 'POST',
  //     data: {count: question_counter }
  //   }).done(function(data){
  //     $('div#questions').append(data);
  //   });
  // });

});
