FactoryBot.define do
  factory :food do
    name { Faker::Name.initials(number: 2) }
    kcal { Faker::Number.between(from: 1, to: 100000) }
    money { Faker::Number.between(from: 1, to: 100000) }
    note { Faker::Lorem.sentence }
    association :user
  end
end
