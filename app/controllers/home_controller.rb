# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @test_channel = Channel.first!
    @test_group = Group.first!
  end
end
