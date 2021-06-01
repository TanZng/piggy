module Categories
  class CategoryIncomeManager < ApplicationManager
    def create(category_params, user)
      Categories::CreateService.call(category_params, user, 'Income')
    end
  end
end