# frozen_string_literal: true

class Message < ApplicationRecord
  include GuidGenerator

  belongs_to :user
  belongs_to :channel

  validates :content, presence: true, allow_blank: false

  after_create_commit :broadcast_message

  private

  def broadcast_message
    broadcast_append_to(
      ChannelMessagesStream.turbo_id(channel),
      html:   ApplicationController.render(MessageComponent.new(self)),
      target: ChannelMessagesFrame.turbo_id(channel),
    )
  end
end
