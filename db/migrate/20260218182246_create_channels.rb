class CreateChannels < ActiveRecord::Migration[8.1]
  def change
    create_table :channels do |t|
      t.timestamps
      t.string :guid, null: false
      t.text :description, null: false
      t.references :group, null: false, foreign_key: { to_table: :groups }
    end
  end
end
