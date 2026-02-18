# frozen_string_literal: true

FactoryBot.define do
  factory :channel do
    description { 'There are no words do describe this one' }
    guid { SecureRandom.uuid }
    association :group, factory: :group
  end
end
