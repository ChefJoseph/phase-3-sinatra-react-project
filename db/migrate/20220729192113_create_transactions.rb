class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    
    create_table :transactions do |t|
      t.date :date_time
      t.float :amount
      t.string :description
      t.boolean :like
      t.references :sender, references: :users, index: true
      t.references :receiver, references: :users, index: true
      t.string :comments

    end
    
  end
end
