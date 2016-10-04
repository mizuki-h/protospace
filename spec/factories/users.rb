FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    name {Faker::Name.name}
    member {Faker::Name.name}
    profile {Faker::Lorem.sentence}
    works {Faker::Company.name}
    avatar {Faker::Avatar.image}
    password {Faker::Internet.password(8)}
    password_confirmation {Faker::Internet.password(8)}
  end
end

