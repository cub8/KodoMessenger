# frozen_string_literal: true

module ChannelMessageFrame
  class << self
    def turbo_id(message)
      "message-#{message.guid}"
    end
  end
end
