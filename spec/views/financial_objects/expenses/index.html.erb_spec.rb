require 'rails_helper'

RSpec.describe "financial_objects/expenses/index", type: :view do
  before(:each) do
    assign(:financial_objects_expenses, [
      FinancialObjects::Expense.create!(
        description: "Description",
        currency: "9.99",
        category: nil,
        payment_method: nil,
        wallet: nil
      ),
      FinancialObjects::Expense.create!(
        description: "Description",
        currency: "9.99",
        category: nil,
        payment_method: nil,
        wallet: nil
      )
    ])
  end

  it "renders a list of financial_objects/expenses" do
    render
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
