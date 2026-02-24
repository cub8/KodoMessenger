# frozen_string_literal: true

class ChannelsController < ApplicationController
  before_action :set_channel, except: :create

  def show; end
  def edit; end
  def create; end
  def update; end
  def destroy; end

  private

  def set_channel
    @channel = Channel.find_by!(guid: params[:guid])
  end
end
