class CreateFollowingRelationships < ActiveRecord::Migration[7.0]
  def change
    create_table :following_relationships do |t|
      t.integer :follower_id
      t.integer :followed_user_id

      t.timestamps
    end
  end
end
