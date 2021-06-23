# == Schema Information
#
# Table name: financial_objects_expenses
#
#  id                :bigint           not null, primary key
#  currency          :decimal(8, 2)
#  date              :date
#  description       :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  category_id       :bigint           not null
#  payment_method_id :bigint           not null
#  wallet_id         :bigint           not null
#
# Indexes
#
#  index_financial_objects_expenses_on_category_id        (category_id)
#  index_financial_objects_expenses_on_payment_method_id  (payment_method_id)
#  index_financial_objects_expenses_on_wallet_id          (wallet_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories_category_expenses.id)
#  fk_rails_...  (payment_method_id => financial_objects_payment_methods.id)
#  fk_rails_...  (wallet_id => users_wallets.id)
#
module FinancialObjects
  class Expense < FinancialObject
    validates :description, presence: true
    belongs_to :category, class_name: 'Categories::CategoryExpense'
    belongs_to :payment_method, class_name: 'FinancialObjects::PaymentMethod'
    belongs_to :wallet, class_name: 'Users::Wallet'
  end
end
