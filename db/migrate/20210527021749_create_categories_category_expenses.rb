class CreateCategoriesCategoryExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :categories_category_expenses do |t|
      t.string :title
      t.string :color
      t.string :icon
      t.belongs_to :wallet, null: false, foreign_key: { to_table: :users_wallets }

      t.timestamps
    end
  end
end
