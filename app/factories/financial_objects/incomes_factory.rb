module FinancialObjects
  class IncomesFactory < AbstractFinancialFactory
    def create_financial_object(income_params)
      income = FinancialObjects::Income.new(income_params)
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