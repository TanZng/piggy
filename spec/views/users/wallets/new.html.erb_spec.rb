require 'rails_helper'

RSpec.describe "users/wallets/new", type: :view do
  before(:each) do
    assign(:users_wallet, Users::Wallet.new(
      name: "MyString"
    ))
  end

  it "renders new users_wallet form" do
    render

    assert_select "form[action=?][method=?]", users_wallets_path, "post" do

      assert_select "input[name=?]", "users_wallet[name]"
    end
  end
end
