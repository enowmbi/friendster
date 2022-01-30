class User < ApplicationRecord
  has_many :following_relationships, foreign_key: :follower_id, dependent: :destroy
  has_many :followed_users, through: :following_relationships

  has_many :follower_relationships, foreign_key: :followed_user_id, class_name: "FollowingRelationship", dependent: :destroy
  has_many :followers, through: :follower_relationships


  def follow(user)
    followed_users << user
  end

  def following?(user)
    followed_user_ids.include? user.id
  end

  def unfollow(user)
    followed_users.delete(user)
  end
end
