require 'rails_helper'

RSpec.describe "financial_objects/goals/show", type: :view do
  before(:each) do
    @financial_objects_goal = assign(:financial_objects_goal, FinancialObjects::Goal.create!(
      description: "Description",
      currency: "9.99",
      wallet: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
