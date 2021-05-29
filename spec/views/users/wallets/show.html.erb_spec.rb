require 'rails_helper'

RSpec.describe "users/wallets/show", type: :view do
  before(:each) do
    @users_wallet = assign(:users_wallet, Users::Wallet.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
