# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  Patient.create( name: Faker::Name.first_name, last_name: Faker::Name.last_name, run: Faker::ChileRut.unique.full_rut, birth_date: Faker::Date.between(from: 100.years.ago, to: 18.years.ago) ) 
end
