# == Schema Information
#
# Table name: categories_category_expenses
#
#  id         :bigint           not null, primary key
#  color      :string
#  icon       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  wallet_id  :bigint           not null
#
# Indexes
#
#  index_categories_category_expenses_on_wallet_id  (wallet_id)
#
# Foreign Keys
#
#  fk_rails_...  (wallet_id => users_wallets.id)
#
class Categories::CategoryExpense < ApplicationRecord
  belongs_to :wallet
end
