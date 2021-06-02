module Dashboards
  class DashboardController < ApplicationController
    before_action :set_month_and_year, only: :monthly
    before_action :set_year, only: :annual

    def monthly; end

    def annual; end

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
      @month = Date::MONTHNAMES[@month_and_year.split('-')[1].to_i]
      @year = @month_and_year.split('-')[0]
    end

  end
end
