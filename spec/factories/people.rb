FactoryBot.define do
  factory :person do
    username Faker::Name.unique.name
    email Faker::Internet.unique.safe_email
    phone_number Faker::PhoneNumber.unique.phone_number
    password 'password'
  end
end
