# frozen_string_literal: true

class ApplicationController < ActionController::Base

  include Authentication

  before_action :require_authentication
  before_action :set_sidebar_data

  allow_browser versions: :modern


  private

  def set_sidebar_data
    return unless Current.user

    @users = User.where.not(id: Current.user.id)
    @groups = Current.user.groups

  end
end
