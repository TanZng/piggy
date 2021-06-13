module FinancialObjects
  class AnnualQuery < ApplicationQuery
    def initialize(user, year, klass, category = nil)
      super()
      @user = user
      @year = year
      @klass = klass
      @category = category
    end

    def total_currency
      @klass.where(year_and_user)
            .sum(:currency)
    end

    def currency_by_category
      @klass.where(year_and_user)
            .joins(:category)
            .group("#{@category.table_name}.title")
            .sum("#{@klass.table_name}.currency")
    end

    def currency_group_by_month
      @klass.where(year_and_user)
            .group_by_month(:date)
            .sum("#{@klass.table_name}.currency")
    end

    private

    def year_and_user
      conditions = []
      conditions << ["date_part('year', #{@klass.table_name}.date) = '#{@year}'"]
      conditions << ["#{@klass.table_name}.wallet_id = #{@user.wallet_id}"]
      conditions.map do |condition|
        " ( #{condition.join(' AND ')} ) "
      end.join(' AND ')
    end
  end
end