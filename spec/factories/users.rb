# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    nickname { Faker::Internet.username }
    name { Faker::Internet.name }
    password { Faker::Internet.password(min_length: 8) }
  end
end
