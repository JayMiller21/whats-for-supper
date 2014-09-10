class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.name
      t.string :password_digest
      t.timestamps
    end
  end
end
