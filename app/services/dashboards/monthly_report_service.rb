module Dashboards
  class MonthlyReportService < ApplicationService
    def initialize(user, month, year)
      super()
      @user = user
      @month = month
      @year = year
    end

    def call
      report = Dashboards::MonthlyReport.new(@year, @month)
      report.total_expenses_currency = query_total_expenses_currency
      report.total_incomes_currency = query_total_incomes_currency
      report
    end

    private

    def query_total_expenses_currency
      FinancialObjects::MonthlyCurrencyQuery.call(@user, @month, @year, load_financial_object_class('Expense'))
    end

    def query_total_incomes_currency
      FinancialObjects::MonthlyCurrencyQuery.call(@user, @month, @year, load_financial_object_class('Income'))
    end

  end
end