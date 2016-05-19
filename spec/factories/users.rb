
FactoryGirl.define do
  factory :user do

    trait :is_valid do
      email "test@test.com"
      password "password"
    end
  end
end
