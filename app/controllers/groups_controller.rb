# frozen_string_literal: true

class GroupsController < ApplicationController
  before_action :set_group, except: :create

  def show
    @channels = @group.channels
  end

  def edit; end
  def create; end
  def update; end
  def destroy; end

  private

  def set_group
    @group = Group.find_by(guid: params[:guid])
  end
end
