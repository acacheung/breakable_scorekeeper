class AddGameRounds < ActiveRecord::Migration
  def up
    create_table :rounds do |t|
      t.integer :game_id, :null => false
    end
  end

  def down
    drop_table :rounds
  end
end
