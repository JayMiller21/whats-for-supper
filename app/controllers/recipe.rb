get '/recipes' do
  @recipes = Recipe.all

  erb :'recipe/index'
end

# get '/recipe/new' do
#   @ingredient_counter = 1
#   erb :'recipe/new'
# end

get '/recipe/:id' do
  @recipe = Recipe.find(params[:id])
  @ingredients = @recipe.ingredients
  @ingredient_names = @ingredients.map do |ingredient|
    FoodItem.find(ingredient.food_item_id).name
  end
  @ingredient_names.to_a
    # binding.pry
  erb :'recipe/show'
end

# post '/recipe/new' do
#   #can only add one ingredient currently
#   @recipe = Recipe.create(name: params[:recipe][:name], author_id: session[:current_user_id])
#   # binding.pry
#   @ingredient = Ingredient.create(
#     recipe_id: @recipe.id,
#     quantity: params[:recipe][:ingredient][:quantity],
#     unit: params[:recipe][:ingredient][:unit],
#     food_item_id: params[:recipe][:ingredient][:food_item_id]
#   )
#   redirect to :"/recipe/#{@recipe.id}"
# end

# get '/recipe/:id/edit' do

#   erb :'recipe/show'
# end
