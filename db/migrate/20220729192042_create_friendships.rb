class CreateFriendships < ActiveRecord::Migration[6.1]
  def change
    create_table :friendships do |t|
      t.references :user_a, references: :users, index: true
      t.references :user_b, references: :users, index: true
      t.datetime :friendship_length
      t.integer :user_id

    end
    
  end
end
