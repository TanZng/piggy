require 'rails_helper'

RSpec.describe "financial_objects/goals/index", type: :view do
  before(:each) do
    assign(:financial_objects_goals, [
      FinancialObjects::Goal.create!(
        description: "Description",
        currency: "9.99",
        wallet: nil
      ),
      FinancialObjects::Goal.create!(
        description: "Description",
        currency: "9.99",
        wallet: nil
      )
    ])
  end

  it "renders a list of financial_objects/goals" do
    render
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
