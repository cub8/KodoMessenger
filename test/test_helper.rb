# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end

class ActionDispatch::IntegrationTest

  def setup
    user = FactoryBot.create(:user)
    login_as user
  end

  # def login_as(user)
  #   if respond_to? :visit
  #     visit session_path
  #     fill_in :email_address, with: user.email_address
  #     fill_in :password, with: 'secret'
  #     click_on 'Login'
  #   else
  #     post session_url, params: { name: user.email_address, password: 'secret' }
  #   end
  # end

  # def logout
  #   delete logout_url
  # end
end
