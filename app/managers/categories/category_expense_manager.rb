module Categories
  class CategoryExpenseManager < ApplicationManager
    def create(category_params, user)
      Categories::CreateService.call(category_params, user, 'Expense')
    end

    def update(id, category_params, user)
      Categories::UpdateService.call(id, category_params, user, 'Expense')
    end
  end
end