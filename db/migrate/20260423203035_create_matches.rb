class CreateMatches < ActiveRecord::Migration[8.1]
  def change
    create_table :matches do |t|
      t.string :title
      t.string :home_team
      t.string :away_team
      t.date :played_on
      t.string :venue

      t.timestamps
    end
  end
end
