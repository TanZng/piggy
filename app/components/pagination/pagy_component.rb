# frozen_string_literal: true

class Pagination::PagyComponent < ApplicationViewComponent
  def initialize(pagy:)
    super()
    @pagy = pagy
  end

end
