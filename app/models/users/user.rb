module Users
  class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
    has_one :wallet, class_name: 'Users::Wallet', foreign_key: 'wallet_id'
  end
end
