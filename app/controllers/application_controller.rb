# frozen_string_literal: true

class ApplicationController < ActionController::Base

  include Authentication

  before_action :require_authentication

  allow_browser versions: :modern
end
