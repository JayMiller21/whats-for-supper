class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.float :total_fat
      t.float :total_protein
      t.float :total_carb
      t.timestamps
    end
  end
end
