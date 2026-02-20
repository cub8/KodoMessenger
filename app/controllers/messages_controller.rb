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
    @messages = @channel.messages.joins(:user)
  end

  def show; end

  def new
    @message = Message.new
  end

  def edit; end

  def create; end

  def update; end

  def destroy; end

  private

  def set_channel
    @channel = Channel.find_by!(guid: params[:channel_guid])
  end

  def set_message
    @message = Message.find_by!(guid: params[:guid])
  end
end
