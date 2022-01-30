class User < ApplicationRecord
  has_many :following_relationships, foreign_key: :follower_id
  has_many :followed_users, through: :following_relationships


  def follow user
    followed_users << user
  end

  def following? user
    followed_user_ids.include? user.id
  end
end
