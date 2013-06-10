class AddScoresTable < ActiveRecord::Migration
  def up
    create_table :scores do |t|
      t.integer :round_id, :null => false
      t.integer :player_id, :null => false
      t.integer :score
    end
  end

  def down
    drop_table :scores
  end
end