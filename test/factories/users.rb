# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    nickname { 'Tester' }
    email_address { 'ab@mail.com' }
    password { 'secret' }
    password_confirmation { 'secret' }
  end
end
