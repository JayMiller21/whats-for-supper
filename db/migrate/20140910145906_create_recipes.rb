class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.float :total_fat
      t.float :total_protein
      t.float :total_carb
      t.integer :author_id
      t.timestamps
    end
  end
end
