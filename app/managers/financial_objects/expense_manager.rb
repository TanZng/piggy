module FinancialObjects
  class ExpenseManager < ApplicationManager
    def create(expense_params, user)
      FinancialObjects::CreateService.call(expense_params, user, 'Expense')
    end
  end
end