module Categories
  class CreateService < ApplicationService
    def initialize(income_params, user, type)
      super()
      @category_params = income_params
      @user = user
      @type = type
    end

    def call
      @category_params[:wallet_id] = @user.wallet_id
      factory_class = "FinancialObjects::#{@type}sFactory".split('::').inject(Object) { |obj, type| obj.const_get type }
      income_factory = factory_class.new
      income_factory.create_category(@category_params)
    end
  end
end