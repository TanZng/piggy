# == Schema Information
#
# Table name: users_wallets
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :users_wallet, class: 'Users::Wallet' do
    name { "MyString" }
  end
end
