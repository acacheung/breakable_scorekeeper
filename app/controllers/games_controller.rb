class GamesController < ApplicationController
  def index
    @games = Game.all.reverse
  end

  def new
    @game = Game.new
    5.times do |count|
      @player = @game.players.new
    end
  end

  def create
    @game = Game.new(params[:game])
    if @game.save
      redirect_to game_path(@game)
    else
      render :action => 'new'
    end
  end

  def show
    @game = Game.find(params[:id])
    @round = @game.rounds.build
    @game.players.each do |player|
      @round.scores.build(:player_id => player.id)
    end
  end
end