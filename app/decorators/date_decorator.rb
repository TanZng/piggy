class DateDecorator < BaseDecorator
  decorates :date
  def long
    date.strftime('%A, %B %d %Y')
  end

  def medium
    date.strftime('%a %b %d %Y')
  end

  def short
    date.strftime('%b %d %Y')
  end
end