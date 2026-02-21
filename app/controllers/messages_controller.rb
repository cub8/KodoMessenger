# frozen_string_literal: true

class MessagesController < ApplicationController
  before_action :set_channel
  before_action :set_message, only: %i[
    show
    edit
    update
    destroy
  ]

  def index
    @messages = @channel.messages.joins(:user).order(:created_at)
  end

  def show; end

  def new
    @message = Message.new
  end

  def edit; end

  def create
    builder = MessageBuilder.new(
      user:    Current.session.user,
      channel: @channel,
      content: message_params[:content],
    )
    @message = builder.build

    if builder.save
      redirect_to new_channel_message_path, status: :created
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update; end

  def destroy; end

  private

  def set_channel
    @channel = Channel.find_by!(guid: params[:channel_guid])
  end

  def set_message
    @message = Message.find_by!(guid: params[:guid])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
