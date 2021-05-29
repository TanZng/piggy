require 'rails_helper'

RSpec.describe "categories/category_expenses/edit", type: :view do
  before(:each) do
    @categories_category_expense = assign(:categories_category_expense, Categories::CategoryExpense.create!(
      title: "MyString",
      color: "MyString",
      icon: "MyString",
      wallet: nil
    ))
  end

  it "renders the edit categories_category_expense form" do
    render

    assert_select "form[action=?][method=?]", categories_category_expense_path(@categories_category_expense), "post" do

      assert_select "input[name=?]", "categories_category_expense[title]"

      assert_select "input[name=?]", "categories_category_expense[color]"

      assert_select "input[name=?]", "categories_category_expense[icon]"

      assert_select "input[name=?]", "categories_category_expense[wallet_id]"
    end
  end
end
