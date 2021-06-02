# == Schema Information
#
# Table name: categories_category_incomes
#
#  id         :bigint           not null, primary key
#  color      :string
#  date       :date
#  icon       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  wallet_id  :bigint           not null
#
# Indexes
#
#  index_categories_category_incomes_on_wallet_id  (wallet_id)
#
# Foreign Keys
#
#  fk_rails_...  (wallet_id => users_wallets.id)
#
FactoryBot.define do
  factory :categories_category_income, class: 'Categories::CategoryIncome' do
    title { "MyString" }
    color { "MyString" }
    icon { "MyString" }
    wallet { nil }
  end
end
