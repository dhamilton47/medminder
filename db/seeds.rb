# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Patient.create(name: 'Dan Hamilton')
Patient.create(name: 'Celia Hamilton')
Patient.create(name: 'Theodore Hamilton')
Patient.create(name: 'Samuel Hamilton')

Provider.create(name: 'Clemons', phone: '407-578-6610', email: 'Brooks@email.com')
Provider.create(name: 'Kurup', phone: '407-578-6610', email: 'Kurup@email.com')
Provider.create(name: 'Bolt', phone: '407-578-6610', email: 'Bolt@email.com')

Supplier.create(name: 'Walgreens', phone: '407-656-9286', email: 'Pharmacy@www.Walgreens.com')
Supplier.create(name: 'Prime Theraputics', phone: '407-656-9286', email: 'Pharmacy@www.PrimeTherapies.com')
