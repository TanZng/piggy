class Dashboards::DashboardController < ApplicationController
  def monthly
    @month_and_year = if params[:month].nil? || params[:month] == ''
                        Time.now.strftime('%Y-%m')
                      else
                        params[:month]
                      end
    @month = Date::MONTHNAMES[@month_and_year.split('-')[1].to_i]
    @year = @month_and_year.split('-')[0]
  end

  def annual
    @year = if params[:year].nil? || params[:year] == ''
              Time.now.strftime('%Y')
            else
              params[:year]
             end
  end
end
