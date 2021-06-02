module FinancialObjects
  class IncomeManager < ApplicationManager
    def create(income_params, user)
      FinancialObjects::CreateService.call(income_params, user, 'Income')
    end

    def update(id, expense_params, user)
      FinancialObjects::UpdateService.call(id, expense_params, user, 'Income')
    end

    def index(user)
      FinancialObjects::IndexService.call(user, 'Income', :category)
    end
  end
end