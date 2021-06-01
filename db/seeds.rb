# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Run seeds'
user = Users::User.create(email: 'mail@mail.com', password: '123456', password_confirmation: '123456')

wallet = Users::Wallet.create(name: 'my wallet', user_id: user.id)

user.wallet_id = wallet.id
user.save

c1 = Categories::CategoryIncome.create(title: 'Trabajo', color: '#FF9E33', icon: 'laptop', wallet_id: wallet.id)
c2 = Categories::CategoryIncome.create(title: 'Beca', color: '#33BCFF', icon: 'school', wallet_id: wallet.id)
c3 = Categories::CategoryIncome.create(title: 'Inversiones', color: '#FF5733', icon: 'rocket', wallet_id: wallet.id)

FinancialObjects::Income.create(description: 'Ingreso 1', currency: 12.22, category_id: c1.id, wallet_id: wallet.id)
FinancialObjects::Income.create(description: 'Ingreso 2', currency: 342.22, category_id: c2.id, wallet_id: wallet.id)
FinancialObjects::Income.create(description: 'Ingreso 3', currency: 1255.22, category_id: c3.id, wallet_id: wallet.id)

c4 = Categories::CategoryExpense.create(title: 'Mercado', color: '#FF9E33', icon: 'bag', wallet_id: wallet.id)
c5 = Categories::CategoryExpense.create(title: 'Luz', color: '#33BCFF', icon: 'bulb', wallet_id: wallet.id)
c6 = Categories::CategoryExpense.create(title: 'Ropa', color: '#FF5733', icon: 'shirt', wallet_id: wallet.id)

FinancialObjects::Expense.create(description: 'Gasto 1', currency: 200.53, category_id: c4.id, wallet_id: wallet.id)
FinancialObjects::Expense.create(description: 'Gasto 2', currency: 42.26, category_id: c5.id, wallet_id: wallet.id)
FinancialObjects::Expense.create(description: 'Gasto 3', currency: 55.52, category_id: c6.id, wallet_id: wallet.id)

