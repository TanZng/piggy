# frozen_string_literal: true

class NavBar::Component < ApplicationViewComponent
  def initialize(user_logged:)
    @user_logged = user_logged
  end

end
