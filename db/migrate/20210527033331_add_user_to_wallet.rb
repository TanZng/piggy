class AddUserToWallet < ActiveRecord::Migration[6.1]
  def change
    change_table :users_wallets do |t|
      t.belongs_to :user, foreign_key: { to_table: :users_users }
    end
  end
end
