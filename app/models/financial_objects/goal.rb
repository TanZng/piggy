# == Schema Information
#
# Table name: financial_objects_goals
#
#  id          :bigint           not null, primary key
#  currency    :decimal(, )
#  description :string
#  due_date    :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  wallet_id   :bigint           not null
#
# Indexes
#
#  index_financial_objects_goals_on_wallet_id  (wallet_id)
#
# Foreign Keys
#
#  fk_rails_...  (wallet_id => users_wallets.id)
#
class FinancialObjects::Goal < ApplicationRecord
  belongs_to :wallet
end
