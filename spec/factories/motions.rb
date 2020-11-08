FactoryBot.define do
  factory :motion do
    name { Faker::Name.initials(number: 2) }
    time { Faker::Number.between(from: 1, to: 100000) }
    kcal { Faker::Number.between(from: 1, to: 100000) }
    association :user
  end
end
