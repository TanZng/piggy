class CreateFinancialObjectsGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :financial_objects_goals do |t|
      t.string :description
      t.decimal :currency
      t.date :due_date
      t.belongs_to :wallet, null: false, foreign_key: { to_table: :users_wallets }

      t.timestamps
    end
  end
end
