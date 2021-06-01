# == Schema Information
#
# Table name: users_users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  wallet_id              :bigint
#
# Indexes
#
#  index_users_users_on_email                 (email) UNIQUE
#  index_users_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_users_on_wallet_id             (wallet_id)
#
# Foreign Keys
#
#  fk_rails_...  (wallet_id => users_wallets.id)
#
module Users
  class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
    has_one :wallet, class_name: 'Users::Wallet', foreign_key: 'wallet_id'
  end
end
