class Player < ActiveRecord::Base
  def new
    @player = Player.new
  end
end