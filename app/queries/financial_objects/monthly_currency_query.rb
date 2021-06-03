module FinancialObjects
  class MonthlyCurrencyQuery < ApplicationQuery
    def initialize(user, month, year, klass, category = nil)
      super()
      @user = user
      @year = year
      @month = month
      @klass = klass
      @category = category
    end

    def call
      conditions = create_query
      @klass.where(conditions).sum(:currency)
    end

    private

    def create_query
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