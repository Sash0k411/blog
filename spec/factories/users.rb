# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password' }
    username { Faker::Internet.username }
    encrypted_password { Devise::Encryptor.digest(User, 'password') }
    reset_password_token { Faker::Internet.password }
    reset_password_sent_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    remember_created_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    created_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    updated_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
  end
end
