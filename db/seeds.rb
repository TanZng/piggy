# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Run seeds'
user1 = Users::User.create(email: 'mail@mail.com', password: '123456', password_confirmation: '123456')

wallet1 = Users::Wallet.create(name: 'my wallet 1', user_id: user1.id)

user1.wallet_id = wallet1.id
user1.save

c1 = Categories::CategoryIncome.create(title: 'Trabajo', color: '#FF9E33', icon: 'laptop', wallet_id: wallet1.id)
c2 = Categories::CategoryIncome.create(title: 'Beca', color: '#33BCFF', icon: 'school', wallet_id: wallet1.id)
c3 = Categories::CategoryIncome.create(title: 'Inversiones', color: '#FF5733', icon: 'rocket', wallet_id: wallet1.id)

FinancialObjects::Income.create(description: 'Ingreso 1', currency: 12.22, category_id: c1.id, wallet_id: wallet1.id)
FinancialObjects::Income.create(description: 'Ingreso 2', currency: 342.22, category_id: c2.id, wallet_id: wallet1.id)
FinancialObjects::Income.create(description: 'Ingreso 3', currency: 1255.22, category_id: c3.id, wallet_id: wallet1.id)

c4 = Categories::CategoryExpense.create(title: 'Mercado', color: '#FF9E33', icon: 'bag', wallet_id: wallet1.id)
c5 = Categories::CategoryExpense.create(title: 'Luz', color: '#33BCFF', icon: 'bulb', wallet_id: wallet1.id)
c6 = Categories::CategoryExpense.create(title: 'Ropa', color: '#FF5733', icon: 'shirt', wallet_id: wallet1.id)

p1 = FinancialObjects::PaymentMethod.create(title: 'Tarjeta de credito', description: 'Mi tarjeta roja', wallet_id: wallet1.id)
p2 = FinancialObjects::PaymentMethod.create(title: 'Tarjeta de debito', description: 'Mi tarjeta azul', wallet_id: wallet1.id)
p3 = FinancialObjects::PaymentMethod.create(title: 'Efectivo', description: 'bajo el colchon', wallet_id: wallet1.id)


FinancialObjects::Expense.create(description: 'Gasto 1', currency: 200.53, category_id: c4.id, wallet_id: wallet1.id, payment_method_id: p1.id)
FinancialObjects::Expense.create(description: 'Gasto 2', currency: 42.26, category_id: c5.id, wallet_id: wallet1.id, payment_method_id: p2.id)
FinancialObjects::Expense.create(description: 'Gasto 3', currency: 55.52, category_id: c6.id, wallet_id: wallet1.id, payment_method_id: p3.id)

#
# user 2
#
user2 = Users::User.create(email: 'email@email.com', password: '123456', password_confirmation: '123456')

wallet2 = Users::Wallet.create(name: 'my wallet 2', user_id: user2.id)

user2.wallet_id = wallet2.id
user2.save

c1 = Categories::CategoryIncome.create(title: 'Trabajo', color: '#FF9E33', icon: 'laptop', wallet_id: wallet2.id)
c2 = Categories::CategoryIncome.create(title: 'Beca', color: '#33BCFF', icon: 'school', wallet_id: wallet2.id)
c3 = Categories::CategoryIncome.create(title: 'Inversiones', color: '#FF5733', icon: 'rocket', wallet_id: wallet2.id)

FinancialObjects::Income.create(description: 'Ingreso 1', currency: 12.22, category_id: c1.id, wallet_id: wallet2.id)
FinancialObjects::Income.create(description: 'Ingreso 2', currency: 342.22, category_id: c2.id, wallet_id: wallet2.id)
FinancialObjects::Income.create(description: 'Ingreso 3', currency: 1255.22, category_id: c3.id, wallet_id: wallet2.id)

c4 = Categories::CategoryExpense.create(title: 'Mercado', color: '#FF9E33', icon: 'bag', wallet_id: wallet2.id)
c5 = Categories::CategoryExpense.create(title: 'Luz', color: '#33BCFF', icon: 'bulb', wallet_id: wallet2.id)
c6 = Categories::CategoryExpense.create(title: 'Ropa', color: '#FF5733', icon: 'shirt', wallet_id: wallet2.id)

p1 = FinancialObjects::PaymentMethod.create(title: 'Tarjeta de credito', description: 'Mi tarjeta roja', wallet_id: wallet2.id)
p2 = FinancialObjects::PaymentMethod.create(title: 'Tarjeta de debito', description: 'Mi tarjeta azul', wallet_id: wallet2.id)
p3 = FinancialObjects::PaymentMethod.create(title: 'Efectivo', description: 'bajo el colchon', wallet_id: wallet2.id)


FinancialObjects::Expense.create(description: 'Gasto 1', currency: 200.53, category_id: c4.id, wallet_id: wallet2.id, payment_method_id: p1.id)
FinancialObjects::Expense.create(description: 'Gasto 2', currency: 42.26, category_id: c5.id, wallet_id: wallet2.id, payment_method_id: p2.id)
FinancialObjects::Expense.create(description: 'Gasto 3', currency: 55.52, category_id: c6.id, wallet_id: wallet2.id, payment_method_id: p3.id)
