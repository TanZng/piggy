require 'rails_helper'

RSpec.describe "financial_objects/payment_methods/new", type: :view do
  before(:each) do
    assign(:financial_objects_payment_method, FinancialObjects::PaymentMethod.new(
      title: "MyString",
      description: "MyString",
      wallet: nil
    ))
  end

  it "renders new financial_objects_payment_method form" do
    render

    assert_select "form[action=?][method=?]", financial_objects_payment_methods_path, "post" do

      assert_select "input[name=?]", "financial_objects_payment_method[title]"

      assert_select "input[name=?]", "financial_objects_payment_method[description]"

      assert_select "input[name=?]", "financial_objects_payment_method[wallet_id]"
    end
  end
end
