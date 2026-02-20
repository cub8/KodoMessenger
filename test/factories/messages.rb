# frozen_string_literal: true

FactoryBot.define do
  factory :message do
    guid { SecureRandom.uuid }
    content { 'hoioi798p6floduyf hiluyo ; /' }
    association :group, factory: :group
    association :user, factory: :user
  end
end
