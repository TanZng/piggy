require 'rails_helper'

RSpec.describe "financial_objects/incomes/edit", type: :view do
  before(:each) do
    @financial_objects_income = assign(:financial_objects_income, FinancialObjects::Income.create!(
      description: "MyString",
      currency: "9.99",
      category: nil,
      wallet: nil
    ))
  end

  it "renders the edit financial_objects_income form" do
    render

    assert_select "form[action=?][method=?]", financial_objects_income_path(@financial_objects_income), "post" do

      assert_select "input[name=?]", "financial_objects_income[description]"

      assert_select "input[name=?]", "financial_objects_income[currency]"

      assert_select "input[name=?]", "financial_objects_income[category_id]"

      assert_select "input[name=?]", "financial_objects_income[wallet_id]"
    end
  end
end
