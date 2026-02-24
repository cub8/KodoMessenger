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
User.create!(
  email_address:         'cube8@example.com',
  password:              '1234',
  password_confirmation: '1234',
  nickname:              'cub8',
)
User.create!(
  email_address:         'random_user@example.com',
  password:              '1234',
  password_confirmation: '1234',
  nickname:              'random',
)

user2 = User.create!(
  email_address:         'koksuklepaminecraft@gmail.com',
  password:              '123',
  password_confirmation: '123',
  nickname:              'cub8',
)

user3 = User.create!(
  email_address:         'rafal.kon@example.com',
  password:              '123',
  password_confirmation: '123',
  nickname:              'Koń Rafał',
)

group = Group.create!(
  name:        'Grupa testowa',
  description: 'Grupa służąca do testów itd.',
  owner:       user,
)

group.users << user

channel = Channel.create!(
  name:        'Kanał testowy',
  description: 'Kanał służący do testowania!',
  group:       group,
)

Message.create!(
  content: 'Siemanko!',
  channel: channel,
  user:    user3,
)

Message.create!(
  content: 'No eluwa',
  channel: channel,
  user:    user2,
)
