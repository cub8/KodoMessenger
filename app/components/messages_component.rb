# frozen_string_literal: true

class MessagesComponent < ViewComponent::Base
  attr_accessor :messages, :channel

  def initialize(messages:, channel:)
    @messages = messages
    @channel = channel
  end

  def turbo_frame_id
    ChannelMessagesFrame.turbo_id(channel)
  end

  def turbo_stream_id
    ChannelMessagesStream.turbo_id(channel)
  end
end
