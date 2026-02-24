# frozen_string_literal: true

class Channel < ApplicationRecord
  include GuidGenerator

  belongs_to :group
  has_many :messages

  validates :name, length:  { minimum: 1, maximum: 30 }
  validates :description, length:  { maximum: 300 }
end
