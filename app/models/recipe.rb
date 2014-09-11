class Recipe < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :ingredients

  # TODO: add description/ cooking instructions field.

end
