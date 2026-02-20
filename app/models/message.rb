# frozen_string_literal: true

class Message < ApplicationRecord
  include GuidGenerator

  belongs_to :user
  belongs_to :channel
end
