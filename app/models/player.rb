class Player < ActiveRecord::Base
  attr_accessible :game_id, :number_of_players

  belongs_to :game

  @players = []

  def add_player
    @players << @player
  end
end