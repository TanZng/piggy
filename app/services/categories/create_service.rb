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
      factory_class = "FinancialObjects::#{@type}sFactory".split('::').inject(Object) { |obj, text| obj.const_get text }
      income_factory = factory_class.new
      income_factory.create_category(@category_params)
    end
  end
end