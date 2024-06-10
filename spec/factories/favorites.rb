FactoryBot.define do
  factory :favorite do
    buyer_id { Faker::Number.between(from: 1, to: 4) }
    association :user
  end
end
