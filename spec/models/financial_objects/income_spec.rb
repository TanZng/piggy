# == Schema Information
#
# Table name: financial_objects_incomes
#
#  id          :bigint           not null, primary key
#  currency    :decimal(8, 2)
#  date        :date
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#  wallet_id   :bigint           not null
#
# Indexes
#
#  index_financial_objects_incomes_on_category_id  (category_id)
#  index_financial_objects_incomes_on_wallet_id    (wallet_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories_category_incomes.id)
#  fk_rails_...  (wallet_id => users_wallets.id)
#
require 'rails_helper'

RSpec.describe FinancialObjects::Income, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
