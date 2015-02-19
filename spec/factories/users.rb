require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.username {Faker::Internet.user_name}
    f.name {Faker::Name.name}
    f.email {Faker::Internet.email}
    f.password {Faker::Internet.password(6,50)}
  end

end
