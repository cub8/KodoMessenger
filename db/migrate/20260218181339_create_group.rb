# frozen_string_literal: true

class CreateGroup < ActiveRecord::Migration[8.1]
  def change
    create_table :groups do |t|
      t.timestamps
      t.text :description, null: false
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.string :guid
    end
  end
end
