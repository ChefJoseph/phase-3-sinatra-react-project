class CreateUsers < ActiveRecord::Migration[6.1]
  def change

    create_table :users do |t|
      t.string :name
      t.string :handle
      t.integer :balance
      t.string :profile_pic
      t.string :friends
      t.integer :user_created_on
      
    
    end
    
  end
end
