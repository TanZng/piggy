module FinancialObjects
  class IncomeManager < ApplicationManager
    def create(income_params, current_user)
      FinancialObjects::IncomesFactory.new.create_financial_object(income_params, current_user)
    end
  end
end