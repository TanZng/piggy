module Users
  class UserDecorator < BaseDecorator
    decorates :user

    def my_categories_incomes
      Categories::CategoryIncome.where(wallet_id: user.wallet_id).collect do |category_income|
        [category_income.title, category_income.id]
      end
    end

    def my_categories_expenses
      Categories::CategoryExpense.where(wallet_id: user.wallet_id).collect do |category_expense|
        [category_expense.title, category_expense.id]
      end
    end

    def my_payment_methods
      FinancialObjects::PaymentMethod.where(wallet_id: user.wallet_id).collect do |payment_method|
        [payment_method.title, payment_method.id]
      end
    end
  end
end