class CreateMessage < ActiveRecord::Migration[8.1]
  def change
    create_table :messages do |t|
      t.timestamps
      t.string :guid, null: false
      t.text :content, null: false
      t.references :user, null: false, foreign_key: { to_table: :users }
      t.references :channel, null: false, foreign_key: { to_table: :channels }
    end
  end
end
