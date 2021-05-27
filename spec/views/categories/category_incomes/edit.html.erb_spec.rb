require 'rails_helper'

RSpec.describe "categories/category_incomes/edit", type: :view do
  before(:each) do
    @categories_category_income = assign(:categories_category_income, Categories::CategoryIncome.create!(
      title: "MyString",
      color: "MyString",
      icon: "MyString",
      wallet: nil
    ))
  end

  it "renders the edit categories_category_income form" do
    render

    assert_select "form[action=?][method=?]", categories_category_income_path(@categories_category_income), "post" do

      assert_select "input[name=?]", "categories_category_income[title]"

      assert_select "input[name=?]", "categories_category_income[color]"

      assert_select "input[name=?]", "categories_category_income[icon]"

      assert_select "input[name=?]", "categories_category_income[wallet_id]"
    end
  end
end
