FactoryGirl.define do
  factory :prototype do
    user
    title {Faker::Name.title}
    catchcopy {Faker::Lorem.sentence}
    concept {Faker::Lorem.sentence}
  end
end

