class Account < ActiveRecord::Base
	belongs_to :user, inverse_of: :account
  has_many :transfers, -> { Transfer.where('transfer.from_account_id = :id OR transfer.to_account_id = :id', { id: id })}
end
