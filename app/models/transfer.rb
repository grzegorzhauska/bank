class Transfer < ActiveRecord::Base
  belongs_to :from_account, :class_name => "Account"
  belongs_to :to_account, :class_name => "Account"
  after_create :adjust_balance

  private

  def adjust_balance

    from_account.balance -= value
    from_account.save

    to_account.balance += value
    to_account.save

  end
end
