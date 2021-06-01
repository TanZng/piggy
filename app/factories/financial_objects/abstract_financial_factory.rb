module FinancialObjects
  class AbstractFinancialFactory

    def create_financial_object(params)
      raise NotImplementedError
    end

    def create_category(params)
      raise NotImplementedError
    end
  end
end