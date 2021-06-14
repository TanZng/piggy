# frozen_string_literal: true

class Icon::CircularComponent < ViewComponent::Base
  def initialize(icon:, bg_color:)
    super()
    @icon = icon
    @bg_color = bg_color
  end

end
