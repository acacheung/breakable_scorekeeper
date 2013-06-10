class AddNumberOfPlayers < ActiveRecord::Migration
  def up
    add_column :games, :number_of_players, :integer, :default => '1', :null => false
  end

  def down
    remove_column :games, :number_of_players
  end
end
