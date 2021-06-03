module Dashboards
  class Report
    attr_accessor :year, :total_expenses_currency, :total_incomes_currency, :expenses_currency_by_categories, :incomes_currency_by_categories

    def initialize(year)
      super()
      @year = year
    end

  end
end