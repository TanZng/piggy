module Categories
  class IndexService < ApplicationService
    def initialize(user, type)
      super()
      @user = user
      @type = type
    end

    def call
      current_class = load_category_class(@type)
      current_class.where(wallet_id: @user.wallet_id).order('updated_at DESC')
    end
  end
end