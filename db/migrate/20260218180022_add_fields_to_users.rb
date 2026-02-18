# frozen_string_literal: true

class AddFieldsToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :nickname, :string, null: false
    add_column :users, :guid, :string, null: false
  end
end
