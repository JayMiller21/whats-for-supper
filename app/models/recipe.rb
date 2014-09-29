class Recipe < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :ingredients
  has_many :comments

  # TODO: add description/ cooking instructions field.

end
