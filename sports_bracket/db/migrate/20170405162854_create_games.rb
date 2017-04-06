class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :team1
      t.string :team2
      t.string :scoreteam1
      t.string :scoreteam2
      t.string :teamwon
      t.references :league, index: true, foreign_key: true
    end
  end
end
