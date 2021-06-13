# frozen_string_literal: true

class ColorPicker::Component < ViewComponent::Base
  def initialize(klass:, form:, attribute_name:, color:)
    super()
    @klass, = klass
    @form = form
    @attribute_name = attribute_name
    @color = color
  end

end
