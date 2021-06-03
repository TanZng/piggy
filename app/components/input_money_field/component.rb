# frozen_string_literal: true

class InputMoneyField::Component < ViewComponent::Base
  def initialize(form:, attribute_name:)
    super()
    @form = form
    @attribute_name = attribute_name
  end

end
