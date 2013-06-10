require 'spec_helper'

describe Game do
  it 'will not submit if there is no game name' do
    game = Game.new
    game.name = ''
    expect(game).to_not be_valid
  end
end
