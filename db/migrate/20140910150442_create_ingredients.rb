class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.integer :food_item_id
      t.float :quantity
      t.string :unit
      t.timestamps
    end
  end
end
