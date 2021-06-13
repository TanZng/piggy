# frozen_string_literal: true

class SubmitFormButton::Component < ViewComponent::Base
  def initialize(form:)
    super()
    @form = form
  end

end
