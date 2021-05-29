class CreateFinancialObjectsPaymentMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :financial_objects_payment_methods do |t|
      t.string :title
      t.string :description
      t.belongs_to :wallet, null: false, foreign_key: { to_table: :users_wallets }
      t.date :date

      t.timestamps
    end
  end
end
