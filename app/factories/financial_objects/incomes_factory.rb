module FinancialObjects
  class IncomesFactory < AbstractFinancialFactory
    include Devise

    def create_financial_object(object_params, user)
      income = FinancialObjects::Income.new(object_params)
      income.wallet_id = user.wallet_id
      if income.valid?
        income.save
        puts 'Valid Income'
      end
      income
    end

    def create_category(category_params, current_user)
      category = Categories::CategoryIncome.new(category_params)
      category.wallet = current_user.wallet_id
      if category.valid?
        category.save
        puts 'Valid Category Income'
      end
      category
    end
  end
end