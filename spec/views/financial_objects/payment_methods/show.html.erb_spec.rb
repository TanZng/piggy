require 'rails_helper'

RSpec.describe "financial_objects/payment_methods/show", type: :view do
  before(:each) do
    @financial_objects_payment_method = assign(:financial_objects_payment_method, FinancialObjects::PaymentMethod.create!(
      title: "Title",
      description: "Description",
      wallet: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
