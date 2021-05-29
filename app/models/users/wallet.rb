# == Schema Information
#
# Table name: users_wallets
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
module Users
  class Wallet < ApplicationRecord
    has_one :user, class_name: 'Users::User'
  end
end
