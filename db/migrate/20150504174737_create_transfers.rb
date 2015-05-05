class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      #add_column :account, :sender_id, :integer
      t.integer :from_account_id, index: true
      t.integer :to_account_id, index: true
      t.integer :value
      t.timestamps null: false
    end
  end
end
