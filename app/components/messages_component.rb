# frozen_string_literal: true

class MessagesComponent < ViewComponent::Base
  attr_accessor :messages, :channel

  def initialize(messages:, channel:)
    @messages = messages
    @channel = channel
  end

  def turbo_id
    "messages-#{channel.guid}"
  end
end
