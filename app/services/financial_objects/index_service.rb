module FinancialObjects
  class IndexService < ApplicationService
    def initialize(user, type)
      super()
      @user = user
      @type = type
    end

    def call
      current_class = load_financial_object_class(@type)
      current_class.where(wallet_id: @user.wallet_id)
    end
  end
end