# frozen_string_literal: true

class DatePicker::Component < ViewComponent::Base
  def initialize(klass:, attribute_name:, date:)
    super()
    @klass = klass
    @attribute_name = attribute_name
    @date = date
  end

end
