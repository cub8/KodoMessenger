# frozen_string_literal: true

class MessageBuilder
  attr_accessor :user, :channel, :content, :message

  def initialize(user:, channel:, content:)
    @user = user
    @channel = channel
    @content = content
  end

  def build
    @message = Message.new(
      user:    user,
      channel: channel,
      content: content,
    )
  end

  def save
    message.save
  end

  def save!
    message.save!
  end
end
