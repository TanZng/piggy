require 'rails_helper'

RSpec.describe "financial_objects/goals/new", type: :view do
  before(:each) do
    assign(:financial_objects_goal, FinancialObjects::Goal.new(
      description: "MyString",
      currency: "9.99",
      wallet: nil
    ))
  end

  it "renders new financial_objects_goal form" do
    render

    assert_select "form[action=?][method=?]", financial_objects_goals_path, "post" do

      assert_select "input[name=?]", "financial_objects_goal[description]"

      assert_select "input[name=?]", "financial_objects_goal[currency]"

      assert_select "input[name=?]", "financial_objects_goal[wallet_id]"
    end
  end
end
