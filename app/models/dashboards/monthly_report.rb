module Dashboards
  class MonthlyReport < Report
    attr_accessor :month
    def initialize(year, month)
      super(year)
      @month = month
    end
  end
end