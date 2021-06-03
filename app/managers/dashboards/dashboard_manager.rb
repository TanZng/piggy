module Dashboards
  class DashboardManager < ApplicationManager
    # def show_annual(user)
    #   Dashboards::AnnuallyReportService.call(user, 'Annual')
    # end

    def show_monthly(user, month, year)
      Dashboards::MonthlyReportService.call(user, month, year)
    end
  end
end