class User < ActiveRecord::Base
  has_secure_password
  has_many :recipes, foreign_key: "author_id"
  has_many :comments, foreign_key: "owner_id"
  has_many :comment_votes, foreign_key: "voter_id"
end
