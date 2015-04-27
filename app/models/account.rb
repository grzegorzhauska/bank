class Account < ActiveRecord::Base
	belongs_to :user, inverse_of: :user
end
