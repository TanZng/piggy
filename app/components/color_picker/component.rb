# frozen_string_literal: true

class ColorPicker::Component < ViewComponent::Base
  def initialize(klass:, attribute_name:)
    @klass, = klass,
    @attribute_name = attribute_name
  end

end
