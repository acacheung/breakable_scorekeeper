class Game < ActiveRecord::Base
  attr_accessible :name, :number_of_players

  validates_presence_of :name

  has_many :rounds
  has_many :players

  def format_time(created_at)
    created_at.strftime('%-m/%-d/%y')
  end
end