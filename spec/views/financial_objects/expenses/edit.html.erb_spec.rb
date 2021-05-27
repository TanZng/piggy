require 'rails_helper'

RSpec.describe "financial_objects/expenses/edit", type: :view do
  before(:each) do
    @financial_objects_expense = assign(:financial_objects_expense, FinancialObjects::Expense.create!(
      description: "MyString",
      currency: "9.99",
      category: nil,
      payment_method: nil,
      wallet: nil
    ))
  end

  it "renders the edit financial_objects_expense form" do
    render

    assert_select "form[action=?][method=?]", financial_objects_expense_path(@financial_objects_expense), "post" do

      assert_select "input[name=?]", "financial_objects_expense[description]"

      assert_select "input[name=?]", "financial_objects_expense[currency]"

      assert_select "input[name=?]", "financial_objects_expense[category_id]"

      assert_select "input[name=?]", "financial_objects_expense[payment_method_id]"

      assert_select "input[name=?]", "financial_objects_expense[wallet_id]"
    end
  end
end
