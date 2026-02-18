# frozen_string_literal: true

FactoryBot.define do
  factory :group do
    description { 'The description is so terrific.' }
    guid { SecureRandom.uuid }
    association :owner, factory: :user
  end
end
