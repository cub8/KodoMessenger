# frozen_string_literal: true

class Message < ApplicationRecord
  include GuidGenerator

  belongs_to :user
  belongs_to :channel

  validates :content, presence: true, allow_blank: false

  after_create_commit :broadcast_message

  private

  def broadcast_message
    messages_container_turbo_id = "messages-#{channel.guid}"

    broadcast_append_to(
      messages_container_turbo_id,
      html: ApplicationController.render(MessageComponent.new(self)),
    )
  end
end
