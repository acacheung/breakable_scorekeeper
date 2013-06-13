class Round < ActiveRecord::Base
  attr_accessible :game_id, :scores_attributes

  belongs_to :game
  has_many :scores

  accepts_nested_attributes_for :scores
end