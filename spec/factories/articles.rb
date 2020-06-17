FactoryBot.define do
  factory :article do
    name { Faker::Name.name }
    text { Faker::Text.text }
  end
end