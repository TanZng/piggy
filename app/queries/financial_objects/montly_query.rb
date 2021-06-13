module FinancialObjects
  class MontlyQuery < ApplicationQuery
    def initialize(user, month, year, klass, category = nil)
      super()
      @user = user
      @year = year
      @month = month
      @klass = klass
      @category = category
    end

    def total_currency
      @klass.where(month_and_user).sum(:currency)
    end

    def currency_by_category
      @klass.where(month_and_user).joins(:category).group("#{@category.table_name}.title").sum("#{@klass.table_name}.currency")
    end

    def currency_group_by_day
      @klass.where(month_and_user).group_by_day(:date).sum("#{@klass.table_name}.currency")
    end

    private

    def month_and_user
      conditions = []
      conditions << ["date_part('year', #{@klass.table_name}.date) = '#{@year}'",
                     "date_part('month', #{@klass.table_name}.date) = '#{@month}'"]
      conditions << ["#{@klass.table_name}.wallet_id = #{@user.wallet_id}"]
      conditions.map do |condition|
        " ( #{condition.join(' AND ')} ) "
      end.join(' AND ')
    end
  end
end