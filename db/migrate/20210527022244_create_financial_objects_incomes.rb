class CreateFinancialObjectsIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :financial_objects_incomes do |t|
      t.string :description
      t.decimal :currency
      t.belongs_to :category, null: false, foreign_key: { to_table: :categories_category_incomes }
      t.belongs_to :wallet, null: false, foreign_key: { to_table: :users_wallets }
      t.date :date

      t.timestamps
    end
  end
end
