FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@test.com"
  end

  factory :user do

    trait :is_valid do
      email "test@test.com"
      password "password"
    end

    trait :is_valid_and_unique do
      email { generate(:email) }
      password "password"
    end

    trait :is_admin do
      admin true
    end

  end
end
