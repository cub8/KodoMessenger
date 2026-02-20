# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @test_channel = Channel.first!
  end
end
