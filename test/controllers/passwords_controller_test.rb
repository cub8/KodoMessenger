# frozen_string_literal: true

require 'test_helper'

class PasswordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = FactoryBot.create(:user)
  end

  test 'new' do
    get new_password_path
    assert_response :success
  end

  test 'create' do
    post passwords_path, params: { email_address: @user.email_address }
    assert_enqueued_email_with PasswordsMailer, :reset, args: [@user]
    assert_redirected_to new_session_path

    follow_redirect!
  end

  private

  def assert_notice(text)
    assert_select 'div', /#{text}/
  end
end
