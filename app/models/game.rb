class Game < ActiveRecord::Base
  attr_accessible :name, :created_at

  validates_presence_of :name

  def format_time(created_at)
    created_at.strftime("%b%e %l%P")
  end
end
