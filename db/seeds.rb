require 'csv'

jenn = User.create(name: "jenn", password_digest: "password")

jenn.recipes << Recipe.create(name: "applesauce")

nutrient_data_file = 'db/nutrient_data_abbrev.csv'

food_item_nutrient_data = CSV.foreach(nutrient_data_file, headers: true, header_converters: :symbol) do |food_item|
  binding.pry
  # Fooditem object property objects are coming out nil: change the following create statement. Try binding to see what's going on.
  FoodItem.create(name: food_item["shrt_desc"], total_fat: food_item["lipid_tot_g"], total_protein: food_item["protein_g"], total_carb: food_item["carbohydrt_g"] )
end
