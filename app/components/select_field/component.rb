# frozen_string_literal: true

class SelectField::Component < ViewComponent::Base
  def initialize(form:, attribute_name:, items:, title: true)
    super()
    @form = form
    @attribute_name = attribute_name
    @items = items
    @title = title
  end

end
