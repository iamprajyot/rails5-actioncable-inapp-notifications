# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'prajyot@onit.com', password: '123456', created_at: Time.now, updated_at: Time.now, role: 'client')
User.create(email: 'laxman@onit.com', password: '123456', created_at: Time.now, updated_at: Time.now, role: 'client')
