# frozen_string_literal: true

class FinanceCard::ComponentComponent < ApplicationViewComponent
  def initialize(title:, currency:, type:)
    super()
    @title = title
    @currency = currency
    @type = type
    @icon_color_class = icon_color_class
    @icon_class = icon_class
    @difference = rand(1.5..5.0).round(2)
  end

  def icon_color_class
    case @type
    when 'income'
      'green'
    else
      'red'
    end
  end

  def icon_class
    case @type
    when 'income'
      'trending-up'
    else
      'trending-down'
    end
  end

end
