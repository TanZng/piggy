json.extract! financial_objects_expense, :id, :description, :currency, :category_id, :payment_method_id, :wallet_id, :date, :created_at, :updated_at
json.url financial_objects_expense_url(financial_objects_expense, format: :json)
