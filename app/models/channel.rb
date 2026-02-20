# frozen_string_literal: true

class Channel < ApplicationRecord
  include GuidGenerator

  belongs_to :group
  has_many :messages
end
