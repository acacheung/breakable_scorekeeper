class Player < ActiveRecord::Base
  attr_accessible :game_id, :name

  belongs_to :game

  validates_presence_of :name
end