module FinancialObjects
  class IncomeManager < ApplicationManager
    def create(income_params, user)
      FinancialObjects::CreateService.call(income_params, user, 'Income')
    end
  end
end