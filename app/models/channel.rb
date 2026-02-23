# frozen_string_literal: true

class Channel < ApplicationRecord
  include GuidGenerator

  belongs_to :group

  validates :name, length:  { minimum: 1, maximum: 30 }
  validates :description, length:  { minimum: 0, maximum: 500 }
end
