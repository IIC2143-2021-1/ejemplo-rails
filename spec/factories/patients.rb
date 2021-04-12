FactoryBot.define do
  factory :patient do
    name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    run { Faker::ChileRut.full_rut }
    birth_date { Faker::Date.between(from: 100.years.ago, to: 18.years.ago) }
  end
end
