# frozen_string_literal: true

FactoryBot.define do
  factory :message do
    description { 'There are no words to describe this one' }
    guid { SecureRandom.uuid }
    content { 'hoioi798p6floduyf hiluyo ; /' }
    association :group, factory: :group
    association :user, factory: :user
  end
end
