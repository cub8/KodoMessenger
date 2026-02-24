# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = FactoryBot.create(:user)
  end

  test 'should get new' do
    get new_user_url
    assert_response :success
  end

  test 'should create user' do
    assert_difference('User.count') do
      post users_url, params: {
        user: {
          nickname:      'nickname',
          email_address: 'new@mail.com',
          password:      'password',
        },
      }
    end
    assert_redirected_to root_path
  end

  test 'cant create user with invalid data' do
    assert_difference('User.count', 0) do
      post users_url, params: {
        user: {
          nickname:      '',
          email_address: 'email',
          password:      'password',
        },
      }
      assert_response :unprocessable_entity
      assert_equal 'Form is invalid', flash[:alert]
    end
  end

  test 'cant create user with the taken nickname' do
    assert_difference('User.count', 0) do
      post users_url, params: {
        user: {
          nickname:      'Tester',
          email_address: 'new@mail.com',
          password:      'password',
        },
      }
      assert_response :unprocessable_entity
      assert_equal 'Form is invalid', flash[:alert]
    end
  end
end
