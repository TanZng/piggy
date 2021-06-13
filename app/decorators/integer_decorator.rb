class IntegerDecorator < BaseDecorator
  decorates :number
  def month_name
    Date::MONTHNAMES[number]
  end
end