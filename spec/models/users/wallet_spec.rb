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
require 'rails_helper'

RSpec.describe Users::Wallet, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
