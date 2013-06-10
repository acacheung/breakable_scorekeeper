class GamesController < ApplicationController
  def index
    @games = Game.all.reverse
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params[:game])
    if @game.save
      # @players = @game.players.build(@number_of_players)
      redirect_to game_path
    else
      render :action => 'new'
    end
  end

  def show
    @game = Game.find(params[:id])
    @round = @game.rounds.build
  end
end