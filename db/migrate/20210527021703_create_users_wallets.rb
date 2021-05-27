class CreateUsersWallets < ActiveRecord::Migration[6.1]
  def change
    create_table :users_wallets do |t|
      t.string :name

      t.timestamps
    end
  end
end
