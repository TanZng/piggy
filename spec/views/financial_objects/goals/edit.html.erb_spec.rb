require 'rails_helper'

RSpec.describe "financial_objects/goals/edit", type: :view do
  before(:each) do
    @financial_objects_goal = assign(:financial_objects_goal, FinancialObjects::Goal.create!(
      description: "MyString",
      currency: "9.99",
      wallet: nil
    ))
  end

  it "renders the edit financial_objects_goal form" do
    render

    assert_select "form[action=?][method=?]", financial_objects_goal_path(@financial_objects_goal), "post" do

      assert_select "input[name=?]", "financial_objects_goal[description]"

      assert_select "input[name=?]", "financial_objects_goal[currency]"

      assert_select "input[name=?]", "financial_objects_goal[wallet_id]"
    end
  end
end
