module FinancialObjects
  class CreateService < ApplicationService
    def initialize(object_params, user, type)
      super()
      @object_params = object_params
      @user = user
      @type = type
    end

    def call
      @object_params[:wallet_id] = @user.wallet_id
      factory = "FinancialObjects::#{@type}sFactory".split('::').inject(Object) { |obj, type| obj.const_get type }
      financial_factory = factory.new
      financial_factory.create_financial_object(@object_params)
    end
  end
end