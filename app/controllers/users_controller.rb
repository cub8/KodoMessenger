# frozen_string_literal: true

class UsersController < ApplicationController
  allow_unauthenticated_access only: %i[new create]
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> {
    redirect_to new_user_path, alert: 'Try again later.'
  }

  def new
    @user = User.new
  end

  def edit; end

  def create
    @user = User.new(user_params)
    if @user.save
      start_new_session_for @user
      redirect_to root_path, notice: 'Account created! Thanks for joining us!'
    else
      flash.now[:alert] = 'Form is invalid'
      render :new, status: :unprocessable_entity
    end


  end

  def user_params
    params.require(:user).permit(:nickname, :email_address, :password)
  end

  def update; end
  def destroy; end
end
