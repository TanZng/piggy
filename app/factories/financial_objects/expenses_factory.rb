module FinancialObjects
  class ExpensesFactory < AbstractFinancialFactory
    def create_financial_object(expense_params)
      expense = FinancialObjects::Expense.new(expense_params)
      if expense.valid?
        expense.save
      end
      expense
    end

    def create_category(category_params)
      category = Categories::CategoryExpense.new(category_params)
      if category.valid?
        category.save
      end
      category
    end
  end
end