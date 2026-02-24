# frozen_string_literal: true

class MessageComponent < ViewComponent::Base
  attr_accessor :message

  def initialize(message)
    @message = message
  end

  def turbo_id
    ChannelMessagesFrame.turbo_id(message)
  end
end
