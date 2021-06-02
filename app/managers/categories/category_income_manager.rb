module Categories
  class CategoryIncomeManager < ApplicationManager
    def create(category_params, user)
      Categories::CreateService.call(category_params, user, 'Income')
    end

    def update(id, category_params, user)
      Categories::UpdateService.call(id, category_params, user, 'Income')
    end
  end
end