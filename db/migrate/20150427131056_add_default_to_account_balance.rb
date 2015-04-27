class AddDefaultToAccountBalance < ActiveRecord::Migration
  def change
    change_column(:accounts, :balance, :integer, default: 0, null: false)
  end
end
