module Dashboards
  class DashboardManager < ApplicationManager
    def show_annual(user, year)
      Dashboards::AnnualReportService.call(user, year)
    end

    def show_monthly(user, month, year)
      Dashboards::MonthlyReportService.call(user, month, year)
    end
  end
end