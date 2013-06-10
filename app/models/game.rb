class Game < ActiveRecord::Base
  attr_accessible :name, :players_attributes

  validates_presence_of :name

  has_many :rounds
  has_many :players

  accepts_nested_attributes_for :players, :reject_if => lambda { |player| player[:name].blank? }

  def format_time(created_at)
    created_at.strftime('%-m/%-d/%y')
  end
end