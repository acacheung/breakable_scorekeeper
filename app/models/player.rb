class Player < ActiveRecord::Base
  attr_accessible :game_id, :name

  belongs_to :game
end