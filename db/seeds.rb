# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

spinners = TTY::Spinner::Multi.new('[:spinner] 🌱 Running seeds')

sp1 = spinners.register '[:spinner] 💻 Registering Users'

sp2 = spinners.register '[:spinner] 🥧 Baking Categories, Payments methods'

sp3 = spinners.register '[:spinner] 💸 Winning and wasting money'

sp1.auto_spin
#
# user 1
#
user1 = Users::User.create(email: 'mail@mail.com', password: '123456', password_confirmation: '123456')

wallet1 = Users::Wallet.create(name: 'my wallet 1', user_id: user1.id)

user1.wallet_id = wallet1.id
user1.save

#
# user 2
#
user2 = Users::User.create(email: 'email@email.com', password: '123456', password_confirmation: '123456')

wallet2 = Users::Wallet.create(name: 'my wallet 2', user_id: user2.id)

user2.wallet_id = wallet2.id
user2.save

require 'time'
t1 = Date.parse('2020-01-1')
t2 = Date.parse('2021-06-15')
# puts rand(t1..t2)

n = 5

sp1.success

sp2.auto_spin

n.times do
  Categories::CategoryIncome.create(title: Faker::Company.name, color: Faker::Color.hex_color,
                                    icon: Faker::Creature::Animal.name, wallet_id: wallet1.id)

  Categories::CategoryExpense.create(title: Faker::Commerce.department(max: 1, fixed_amount: true), color: Faker::Color.hex_color,
                                     icon: Faker::Creature::Animal.name, wallet_id: wallet1.id)

  FinancialObjects::PaymentMethod.create(title: "#{Faker::Business.credit_card_type} #{Faker::Color.color_name}",
                                         description: Faker::Bank.name, wallet_id: wallet1.id)

  Categories::CategoryIncome.create(title: Faker::Company.name, color: Faker::Color.hex_color,
                                    icon: Faker::Creature::Animal.name, wallet_id: wallet2.id)

  Categories::CategoryExpense.create(title: Faker::Commerce.department(max: 1, fixed_amount: true), color: Faker::Color.hex_color,
                                     icon: Faker::Creature::Animal.name, wallet_id: wallet2.id)

  FinancialObjects::PaymentMethod.create(title: "#{Faker::Business.credit_card_type} #{Faker::Color.color_name}",
                                         description: Faker::Bank.name, wallet_id: wallet2.id)
end

sp2.success

sp3.auto_spin

550.times do
  prng = Random.new
  FinancialObjects::Income.create(description: Faker::Company.industry, currency: Faker::Number.decimal(l_digits: 2),
                                  category_id: rand(1..n), wallet_id: wallet1.id, date: prng.rand(t1..t2))

  FinancialObjects::Expense.create(description: Faker::Commerce.product_name, currency: Faker::Commerce.price,
                                   category_id: rand(1..n), wallet_id: wallet1.id, payment_method_id: rand(1..n),
                                   date: rand(t1..t2))

  FinancialObjects::Income.create(description: Faker::Company.industry, currency: Faker::Number.decimal(l_digits: 2),
                                  category_id: rand(1..n), wallet_id: wallet2.id, date: prng.rand(t1..t2))

  FinancialObjects::Expense.create(description: Faker::Commerce.product_name, currency: Faker::Commerce.price,
                                   category_id: rand(1..n), wallet_id: wallet2.id, payment_method_id: rand(1..n),
                                   date: prng.rand(t1..t2))
end

sp3.success
