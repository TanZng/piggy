require 'rails_helper'

RSpec.describe "financial_objects/expenses/show", type: :view do
  before(:each) do
    @financial_objects_expense = assign(:financial_objects_expense, FinancialObjects::Expense.create!(
      description: "Description",
      currency: "9.99",
      category: nil,
      payment_method: nil,
      wallet: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
