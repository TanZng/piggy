# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Run seeds'
user = Users::User.create(id: 1, email: 'mail@mail.com', password: '123456', password_confirmation: '123456')

Users::Wallet.create(id: 1, name: 'my wallet', user_id: 1)

user.wallet_id = 1
user.save

Categories::CategoryIncome.create(id: 1, title: 'Trabajo', color: '#FF9E33', icon: 'laptop', wallet_id: 1)
Categories::CategoryIncome.create(id: 2, title: 'Beca', color: '#33BCFF', icon: 'school', wallet_id: 1)
Categories::CategoryIncome.create(id: 3, title: 'Inversiones', color: '#FF5733', icon: 'rocket', wallet_id: 1)

FinancialObjects::Income.create(id: 1, description: 'Gasto 1', currency: 12.22, category_id: 1, wallet_id: 1)
FinancialObjects::Income.create(id: 2, description: 'Gasto 2', currency: 342.22, category_id: 2, wallet_id: 1)
FinancialObjects::Income.create(id: 3, description: 'Gasto 3', currency: 1255.22, category_id: 3, wallet_id: 1)
