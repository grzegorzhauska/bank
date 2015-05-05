module Api
  class TransfersController < Api::BaseController
    before_action :set_to_account, only: [:create]

    # POST /api/{plural_resource_name}
    def create
      ActiveRecord::Base.transaction do
        @transfer = Transfer.new(transfer_params)

        #binding.pry
        if @transfer.save
          render json: @transfer.from_account, status: :created
        else
          render json: @transfer.errors, status: :unprocessable_entity
        end
      end
    end

    private

    def set_to_account

      @to_account = User.find_by_name!(params[:transfer][:to_user]).account
      #binding.pry
    end

    def transfer_params
      params.require(:transfer).permit(:from_account_id, :value).merge(to_account_id: @to_account.id)
    end
  end
end
