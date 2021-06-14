# frozen_string_literal: true

class Notification::Component < ApplicationViewComponent
  def initialize(type:, data:)
    super()
    @type = type
    @data = prepare_data(data)
    @icon_class = icon_class
    @icon_color_class = icon_color_class
  end

  private

  def prepare_data(data)
    case data
    when Hash
      data
    else
      { title: data }
    end
  end

  def icon_class
    case @type
    when 'success'
      'check-circle'
    when 'error'
      'exclamation'
    when 'alert'
      'shield-exclamation'
    else
      'check-circle'
    end
  end

  def icon_color_class
    case @type
    when 'success'
      'text-green-400'
    when 'error'
      'text-red-400'
    when 'alert'
      'text-red-400'
    else
      'text-green-400'
    end
  end

end
