class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    
    create_table :transactions do |t|
      t.datetime :date_time
      t.float :amount
      t.string :description
      t.references :sender, references: :users, index: true
      t.references :receiver, references: :users, index: true

    end
    
  end
end
