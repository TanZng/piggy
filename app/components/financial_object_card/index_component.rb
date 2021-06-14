# frozen_string_literal: true

class FinancialObjectCard::IndexComponent < ApplicationViewComponent
  def initialize(financial_object:)
    super()
    @financial_object = financial_object
  end

  def edit_financial_object
    case @financial_object.class.name.split('::').last
    when 'Expense'
      edit_financial_objects_expense_path(@financial_object)
    when 'Income'
      edit_financial_objects_income_path(@financial_object)
    else
      'Error'
    end
  end

end
