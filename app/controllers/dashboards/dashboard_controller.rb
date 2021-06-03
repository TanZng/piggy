module Dashboards
  class DashboardController < ApplicationController
    before_action :set_month_and_year, only: :monthly
    before_action :set_year, only: :annual

    def monthly
      @report = Dashboards::DashboardManager.new.show_monthly(current_user, @month, @year)
    end

    def annual
      @report = Dashboards::DashboardManager.new.show_annual(current_user, @year)
    end

    private

    def set_year
      @year = if params[:year].nil? || params[:year] == ''
                Time.now.strftime('%Y')
              else
                params[:year]
              end
    end

    def set_month_and_year
      @month_and_year = if params[:month].nil? || params[:month] == ''
                          Time.now.strftime('%Y-%m')
                        else
                          params[:month]
                        end
      @month = @month_and_year.split('-')[1].to_i
      @year = @month_and_year.split('-')[0].to_i
    end

  end
end
