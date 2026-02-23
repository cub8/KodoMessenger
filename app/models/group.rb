# frozen_string_literal: true

class Group < ApplicationRecord
  include GuidGenerator

  belongs_to :owner, class_name: 'User'
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships

  alias_method :members, :users

  validates :name, length:  { minimum: 1, maximum: 30 }
  validates :description, length:  { maximum: 500 }
end
