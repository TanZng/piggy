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

    def create_category(category_params)
      category = Categories::CategoryIncome.new(category_params)
      if category.valid?
        category.save
      end
      category
    end
  end
end