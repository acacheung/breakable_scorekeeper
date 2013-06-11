class Score < ActiveRecord::Base
  attr_accessible :round_id, :player_id, :score

  belongs_to :round
end