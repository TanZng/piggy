module Categories
  class CategoryExpenseManager < ApplicationManager
    def create(category_params, user)
      Categories::CreateService.call(category_params, user, 'Expense')
    end
  end
end