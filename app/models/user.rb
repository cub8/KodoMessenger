# frozen_string_literal: true

class User < ApplicationRecord
  include GuidGenerator

  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :groups, through: :memberships

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  validates :nickname, uniqueness: true, length: { minimum: 1, maximum: 20 }
  validates :password,  presence: true, length: { minimum: 3, maximum: 20 }
  validates :email_address, uniqueness: true, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
