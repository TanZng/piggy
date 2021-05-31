# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = Users::User.create(id: 1, email: 'mail@mail.com', password: '123456', password_confirmation: '123456')
wallet = Users::Wallet.create(id: 1, name: 'my wallet')
user.wallet_id = wallet.id
