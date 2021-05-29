# == Schema Information
#
# Table name: users_wallets
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Users::Wallet, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
