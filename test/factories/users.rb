# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    password_digest { BCrypt::Password.create('secret') }
    email_address { 'ab@mail.com' }
  end
end
