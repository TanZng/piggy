require 'rails_helper'

RSpec.describe "financial_objects/incomes/index", type: :view do
  before(:each) do
    assign(:financial_objects_incomes, [
      FinancialObjects::Income.create!(
        description: "Description",
        currency: "9.99",
        category: nil,
        wallet: nil
      ),
      FinancialObjects::Income.create!(
        description: "Description",
        currency: "9.99",
        category: nil,
        wallet: nil
      )
    ])
  end

  it "renders a list of financial_objects/incomes" do
    render
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
