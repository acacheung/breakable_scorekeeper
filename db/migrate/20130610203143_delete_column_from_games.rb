class DeleteColumnFromGames < ActiveRecord::Migration
  def up
    remove_column :games, :number_of_players
  end

  def down
    add_column :games, :number_of_players, :integer, :default => 1, :null => false
  end
end
