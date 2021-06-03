module Dashboards
  class MonthlyReport < Report
    attr_accessor :month, :daily_expense, :daily_income

    def initialize(year, month)
      super(year)
      @month = month
    end
  end
end