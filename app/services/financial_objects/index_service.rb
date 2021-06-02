module FinancialObjects
  class IndexService < ApplicationService
    def initialize(user, type, include_objects)
      super()
      @user = user
      @type = type
      @include_objects = include_objects
    end

    def call
      current_class = load_financial_object_class(@type)
      current_class.where(wallet_id: @user.wallet_id).includes(@include_objects)
    end
  end
end