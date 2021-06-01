module FinancialObjects
  class CreateService < ApplicationService
    def initialize(income_params, user, type)
      super()
      @income_params = income_params
      @user = user
      @type = type
    end

    def call
      @income_params[:wallet_id] = @user.wallet_id
      factory = "FinancialObjects::#{@type}sFactory".split('::').inject(Object) { |obj, text| obj.const_get text }
      income_factory = factory.new
      income_factory.create_financial_object(@income_params)
    end
  end
end