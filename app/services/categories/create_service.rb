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
      factory_class = load_financial_factory(@type)
      factory = factory_class.new
      factory.create_category(@category_params)
    end
  end
end