# frozen_string_literal: true

class MobileDropDownButton::Component < ApplicationViewComponent
  def initialize(icon:, title:, links:)
    super
    @icon = icon
    @title = title
    @links = links
  end

end
