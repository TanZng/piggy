module FinancialObjects
  class IncomesFactory < AbstractFinancialFactory
    include Devise

    def create_financial_object(object_params)
      income = FinancialObjects::Income.new(object_params)
      if income.valid?
        income.save
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