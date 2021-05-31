module FinancialObjects
  class CreateService < ApplicationService
    def initialize(income_params, user)
      super()
      @income_params = income_params
      @user = user
    end

    def call
      @income_params[:wallet_id] = @user.wallet_id
      income_factory = FinancialObjects::IncomesFactory.new
      income_factory.create_financial_object(@income_params)
    end

  end
end