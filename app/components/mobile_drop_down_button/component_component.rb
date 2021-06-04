# frozen_string_literal: true

class MobileDropDownButton::ComponentComponent < ViewComponent::Base
  include HeroiconHelper
  def initialize(icon:, title:, links:)
    super
    @icon = icon
    @title = title
    @links = links
  end

end
