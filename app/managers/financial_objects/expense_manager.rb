module FinancialObjects
  class ExpenseManager < ApplicationManager
    def create(expense_params, user)
      FinancialObjects::CreateService.call(expense_params, user, 'Expense')
    end

    def update(id, expense_params, user)
      FinancialObjects::UpdateService.call(id, expense_params, user, 'Expense')
    end

    def index(user)
      FinancialObjects::IndexService.call(user, 'Expense')
    end
  end
end