class PlayersController < ApplicationController
  before_filter :load_game

  def index
    @players = @game.players.all
  end

  def new
    @player = @game.players.new(@number_of_players)
  end

  def create
    @player = @game.players.new(params[:player])
    if @player.save
      redirect_to @game
    end
  end

  private

    def load_game
      @game = Game.find(params[:game_id])
    end
end
