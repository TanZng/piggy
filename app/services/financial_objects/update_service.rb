module FinancialObjects
  class UpdateService < ApplicationService
    def initialize(id, new_params, user, type)
      super()
      @id = id
      @new_params = new_params
      @user = user
      @type = type
    end

    def call
      current_class = load_financial_object_class(@type)
      object_to_update = current_class.find(@id)
      [object_to_update.update(@new_params), object_to_update]
    end
  end
end