class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.name
    t.password #something goes here for authentication
    end
  end
end
