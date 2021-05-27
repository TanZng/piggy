require 'rails_helper'

RSpec.describe "users/wallets/edit", type: :view do
  before(:each) do
    @users_wallet = assign(:users_wallet, Users::Wallet.create!(
      name: "MyString"
    ))
  end

  it "renders the edit users_wallet form" do
    render

    assert_select "form[action=?][method=?]", users_wallet_path(@users_wallet), "post" do

      assert_select "input[name=?]", "users_wallet[name]"
    end
  end
end
