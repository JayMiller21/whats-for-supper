class Comment < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
  belongs_to :recipe
  has_many :comment_votes

  def points
    self.comment_votes.count
    #TODO: Update to calculate upvotes - downvotes.
  end
end
