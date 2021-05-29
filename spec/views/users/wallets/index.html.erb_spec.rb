require 'rails_helper'

RSpec.describe "users/wallets/index", type: :view do
  before(:each) do
    assign(:users_wallets, [
      Users::Wallet.create!(
        name: "Name"
      ),
      Users::Wallet.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of users/wallets" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
