class AddIndexToFriendships < ActiveRecord::Migration[7.0]
  add_index :friendships, :following_id
  add_index :friendships, :follower_id
  add_index :friendships, %i[follower_id following_id], unique: true
end
