# frozen_string_literal: true

class DropDownButton::Component < ViewComponent::Base
  def initialize(title:, links:)
    super()
    @title = title
    @links = links
    @n = links.length - 1
  end
end
