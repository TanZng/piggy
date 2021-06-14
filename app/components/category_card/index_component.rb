# frozen_string_literal: true

class CategoryCard::IndexComponent < ApplicationViewComponent
  def initialize(category:)
    super()
    @category = category
  end

  def edit_category
    case @category.class.name.split('::').last
    when 'CategoryExpense'
      edit_categories_category_expense_path(@category)
    when 'CategoryIncome'
      edit_categories_category_income_path(@category)
    else
      'Error'
    end
  end
end
