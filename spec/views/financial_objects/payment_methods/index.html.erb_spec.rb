require 'rails_helper'

RSpec.describe "financial_objects/payment_methods/index", type: :view do
  before(:each) do
    assign(:financial_objects_payment_methods, [
      FinancialObjects::PaymentMethod.create!(
        title: "Title",
        description: "Description",
        wallet: nil
      ),
      FinancialObjects::PaymentMethod.create!(
        title: "Title",
        description: "Description",
        wallet: nil
      )
    ])
  end

  it "renders a list of financial_objects/payment_methods" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
