# frozen_string_literal: true

module GuidGenerator
  extend ActiveSupport::Concern

  included do
    before_create :generate_guid
  end

  def generate_guid
    self.guid = SecureRandom.hex(16)
  end
end
