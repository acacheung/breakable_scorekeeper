class PlayersController < ApplicationController
  before_filter :load_game

  def index
    @players = @game.players.all
  end

  private

    def load_game
      @game = Game.find(params[:game_id])
    end
end
