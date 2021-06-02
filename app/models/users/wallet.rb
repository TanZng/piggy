# == Schema Information
#
# Table name: users_wallets
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_users_wallets_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users_users.id)
#
module Users
  class Wallet < ApplicationRecord
    belongs_to :user, class_name: 'Users::User', foreign_key: 'user_id'
    has_many :financial_objects_incomes, class_name: 'FinancialObjects::Income'
    has_many :financial_objects_expenses, class_name: 'FinancialObjects::Expense'
    has_many :categories_category_incomes, class_name: 'Categories::CategoryIncome'
    has_many :categories_category_expenses, class_name: 'Categories::CategoryExpense'
  end
end
