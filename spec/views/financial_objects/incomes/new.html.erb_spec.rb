require 'rails_helper'

RSpec.describe "financial_objects/incomes/new", type: :view do
  before(:each) do
    assign(:financial_objects_income, FinancialObjects::Income.new(
      description: "MyString",
      currency: "9.99",
      category: nil,
      wallet: nil
    ))
  end

  it "renders new financial_objects_income form" do
    render

    assert_select "form[action=?][method=?]", financial_objects_incomes_path, "post" do

      assert_select "input[name=?]", "financial_objects_income[description]"

      assert_select "input[name=?]", "financial_objects_income[currency]"

      assert_select "input[name=?]", "financial_objects_income[category_id]"

      assert_select "input[name=?]", "financial_objects_income[wallet_id]"
    end
  end
end
