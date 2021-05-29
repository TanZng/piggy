require 'rails_helper'

RSpec.describe "categories/category_expenses/new", type: :view do
  before(:each) do
    assign(:categories_category_expense, Categories::CategoryExpense.new(
      title: "MyString",
      color: "MyString",
      icon: "MyString",
      wallet: nil
    ))
  end

  it "renders new categories_category_expense form" do
    render

    assert_select "form[action=?][method=?]", categories_category_expenses_path, "post" do

      assert_select "input[name=?]", "categories_category_expense[title]"

      assert_select "input[name=?]", "categories_category_expense[color]"

      assert_select "input[name=?]", "categories_category_expense[icon]"

      assert_select "input[name=?]", "categories_category_expense[wallet_id]"
    end
  end
end
