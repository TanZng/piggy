require 'rails_helper'

RSpec.describe "categories/category_incomes/new", type: :view do
  before(:each) do
    assign(:categories_category_income, Categories::CategoryIncome.new(
      title: "MyString",
      color: "MyString",
      icon: "MyString",
      wallet: nil
    ))
  end

  it "renders new categories_category_income form" do
    render

    assert_select "form[action=?][method=?]", categories_category_incomes_path, "post" do

      assert_select "input[name=?]", "categories_category_income[title]"

      assert_select "input[name=?]", "categories_category_income[color]"

      assert_select "input[name=?]", "categories_category_income[icon]"

      assert_select "input[name=?]", "categories_category_income[wallet_id]"
    end
  end
end
