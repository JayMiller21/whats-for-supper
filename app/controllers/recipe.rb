get '/recipes' do
  @recipes = Recipe.all

  erb :'recipe/index'
end

get '/recipe/new' do
  @ingredient_counter = 1
  erb :'recipe/new'
end

get '/recipe/:id' do
  @recipe = Recipe.find(params[:id])
  @ingredients = @recipe.ingredients
  @ingredient_names = @ingredients.map do |ingredient|
    FoodItem.find(ingredient.food_item_id).name
  end
  @ingredient_names.to_a
  @comments = @recipe.comments
    # binding.pry
  erb :'recipe/show'
end

post '/recipe/new' do
  #can only add one ingredient currently
  @recipe = Recipe.create(name: params[:recipe][:name], author_id: session[:current_user_id])
  # binding.pry
  @ingredient = Ingredient.create(
    recipe_id: @recipe.id,
    quantity: params[:recipe][:ingredient][:quantity],
    unit: params[:recipe][:ingredient][:unit],
    food_item_id: params[:recipe][:ingredient][:food_item_id]
  )
  redirect to :"/recipe/#{@recipe.id}"
end

# get '/recipe/:id/edit' do

#   erb :'recipe/show'
# end

get '/ingredient/new' do
  p "hello"
  erb :'recipe/_ingredient_form', layout: false
end

post '/recipe/:id/comment/new' do
  @new_comment = Comment.create(recipe_id: params[:id], content: params[:comment], owner_id: @current_user_id)
  if request.xhr?
    { comment: @new_comment.content }.to_json
  else
    redirect to :"/recipe/#{params[:id]}"
  end
end

post '/comment/:comment_id/votes' do
  @comment_vote = CommentVote.create(comment_id: params[:comment_id], voter_id: @current_user_id, upvote: true)
  @upvotes = CommentVote.where(comment_id: params[:comment_id], upvote: true)
  @points = @upvotes.length
  @recipe = @comment_vote.comment.recipe
  redirect to :"/recipe/#{@recipe.id}"
  # binding.pry
  # { votecount: @votecount }.to_json
end
