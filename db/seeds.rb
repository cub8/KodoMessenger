# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user = User.create!(
  email_address:         'eljo@example.com',
  password:              '123',
  password_confirmation: '123',
  nickname:              'ertania',
)

group = Group.create!(
  name:        'Grupa testowa',
  description: 'Grupa służąca do testów itd.',
  owner:       user,
)

group.members << user

Channel.create!(
  description: 'Kanał testowy!',
  group:       group,
)
