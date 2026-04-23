class CreateMatchEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :match_events do |t|
      t.references :match, null: false, foreign_key: true
      t.string :event_type
      t.string :player_name
      t.string :team_side
      t.integer :timestamp_seconds
      t.boolean :highlight
      t.text :notes

      t.timestamps
    end
  end
end
