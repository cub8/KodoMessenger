# frozen_string_literal: true

class CreateGroup < ActiveRecord::Migration[8.1]
  def change
    create_table :groups do |t|
      t.timestamps
      t.string :name
      t.text :description
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.string :guid, null: false
    end
  end
end
