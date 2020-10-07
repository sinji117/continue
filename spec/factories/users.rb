FactoryBot.define do
  factory :user do
    name { Faker::Name.initials(number: 2) }
    email { Faker::Internet.free_email }
    password { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    day_money { Faker::Number.between(from: 1, to: 100000) }
    metabolism { Faker::Number.between(from: 1, to: 5000) }
  end
end
