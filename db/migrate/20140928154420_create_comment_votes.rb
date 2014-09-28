class CreateCommentVotes < ActiveRecord::Migration
  def change
    create_table :comment_votes do |t|
      t.integer :comment_id
      t.integer :voter_id
      t.boolean :upvote
      t.boolean :downvote

      t.timestamps
    end
  end
end
