class AccountsController < ApplicationController
  before_action :authenticate_user!

  def show
    @account = Account.find_by(user_id: current_user.id)
  end
end
