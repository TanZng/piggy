module FinancialObjects
  class CreateService < ApplicationService
    def initialize(income_params, user, type)
      super()
      @object_params = income_params
      @user = user
      @type = type
    end

    def call
      @object_params[:wallet_id] = @user.wallet_id
      factory = "FinancialObjects::#{@type}sFactory".split('::').inject(Object) { |obj, type| obj.const_get type }
      income_factory = factory.new
      income_factory.create_financial_object(@object_params)
    end
  end
end