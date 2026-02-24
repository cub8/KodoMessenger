# frozen_string_literal: true

module ChannelMessagesFrame
  class << self
    def turbo_id(channel)
      "messages-#{channel.guid}"
    end
  end
end
