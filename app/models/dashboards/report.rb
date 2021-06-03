module Dashboards
  class Report
    attr_accessor :year, :total_expenses_currency, :total_incomes_currency, :expenses_currency_by_categories, :incomes_currency_by_categories
    # attr_writer :total_expenses_currency, :total_incomes_currency, :expenses_currency_by_categories, :incomes_currency_by_categories

    def initialize(year)
      super()
      @year = year
    end

    # def total_expenses_currency
    #   @total_expenses_currency.to_d.round(2, :truncate).to_f
    # end
    #
    # def total_incomes_currency
    #   @total_incomes_currency.to_d.round(2, :truncate).to_f
    # end
  end
end