module Dashboards
  class AnnualReportService < ApplicationService
    def initialize(user, year)
      super()
      @user = user
      @year = year
    end

    def call
      report = Dashboards::AnnualReport.new(@year)
      report.total_expenses_currency = query_total_expenses_currency
      report.total_incomes_currency = query_total_incomes_currency
      report.expenses_currency_by_categories = query_expenses_by_category
      report.incomes_currency_by_categories = query_incomes_by_category
      report.monthly_expense = query_expense_currency_group_by_month
      report.monthly_income = query_income_currency_group_by_month
      report
    end

    private

    def query_expense_interface
      FinancialObjects::AnnualQuery.new(@user, @year,
                                        load_financial_object_class('Expense'),
                                        load_category_class('Expense'))
    end

    def query_income_interface
      FinancialObjects::AnnualQuery.new(@user, @year,
                                        load_financial_object_class('Income'),
                                        load_category_class('Income'))
    end

    def query_total_expenses_currency
      query_expense_interface.total_currency
    end

    def query_total_incomes_currency
      query_income_interface.total_currency
    end

    def query_expenses_by_category
      query_expense_interface.currency_by_category
    end

    def query_incomes_by_category
      query_income_interface.currency_by_category
    end

    def query_expense_currency_group_by_month
      query_expense_interface.currency_group_by_month
    end

    def query_income_currency_group_by_month
      query_income_interface.currency_group_by_month
    end
  end
end