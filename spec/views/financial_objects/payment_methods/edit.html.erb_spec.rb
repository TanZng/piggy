require 'rails_helper'

RSpec.describe "financial_objects/payment_methods/edit", type: :view do
  before(:each) do
    @financial_objects_payment_method = assign(:financial_objects_payment_method, FinancialObjects::PaymentMethod.create!(
      title: "MyString",
      description: "MyString",
      wallet: nil
    ))
  end

  it "renders the edit financial_objects_payment_method form" do
    render

    assert_select "form[action=?][method=?]", financial_objects_payment_method_path(@financial_objects_payment_method), "post" do

      assert_select "input[name=?]", "financial_objects_payment_method[title]"

      assert_select "input[name=?]", "financial_objects_payment_method[description]"

      assert_select "input[name=?]", "financial_objects_payment_method[wallet_id]"
    end
  end
end
