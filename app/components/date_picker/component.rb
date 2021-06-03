# frozen_string_literal: true

class DatePicker::Component < ViewComponent::Base
  def initialize(klass:, form:, attribute_name:, date:)
    super()
    @klass = klass
    @form = form
    @attribute_name = attribute_name
    @date = date
  end

end
