require 'spec_helper'

describe Game do
  it 'will not submit if there is no game name' do
    game = Game.new
    game.name = ''
    expect(game).to_not be_valid
  end

  it 'will display when the game was created in a nice format'
end
