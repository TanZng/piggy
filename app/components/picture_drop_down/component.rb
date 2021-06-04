# frozen_string_literal: true

class PictureDropDown::Component < ViewComponent::Base
  def initialize(picture_url:)
    super()
    @picture_url = picture_url
  end

end
