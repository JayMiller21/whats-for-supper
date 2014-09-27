require 'csv'

CSV.foreach('db/nutrient_data_abbrev.csv', headers: true, header_converters: :symbol) do |food_item|
  FoodItem.create(name: "#{food_item[:shrt_desc]}", total_fat: food_item[:lipid_tot_g].to_f, total_protein: food_item[:protein_g].to_f, total_carb: food_item[:carbohydrt_g].to_f)
end


#Users created in seed file can't login properly. Sign up on site and then login works properly.

jenn = User.create(name: "jenn", password_digest: "password")
jenn.recipes << Recipe.create(name: "applesauce")
Recipe.first.ingredients << Ingredient.create(food_item_id: 50, quantity: 7, unit: "whole")

paul = User.create(name: "paul", password_digest: "password")
paul.recipes << Recipe.create(name: "carrot cake")


# User.second.recipes.create(name: "salad", total_fat: nil, total_protein: nil, total_carb: nil)

User.first.comments.create(content: "Delicious!", recipe_id: 2)
User.second.comments.create(content: "Yuck!", recipe_id: 1)
