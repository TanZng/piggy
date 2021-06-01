module Categories
  class CreateService < ApplicationService
    def initialize(category_params, user, type)
      super()
      @category_params = category_params
      @user = user
      @type = type
    end

    def call
      @category_params[:wallet_id] = @user.wallet_id
      factory_class = "FinancialObjects::#{@type}sFactory".split('::').inject(Object) { |obj, type| obj.const_get type }
      factory = factory_class.new
      factory.create_category(@category_params)
    end
  end
end