class Game < ActiveRecord::Base
  attr_accessible :name, :created_at

  validates_presence_of :name

  has_many :rounds

  def format_time(created_at)
    created_at.strftime('%-m/%-d/%y')
  end
end