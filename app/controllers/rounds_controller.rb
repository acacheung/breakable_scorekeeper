class RoundsController < ApplicationController
  before_filter :load_game

  def index
    @rounds = @game.rounds.all
  end

  def new
    @round = @game.rounds.new
  end

  def create
    @round = @game.rounds.new(params[:round])
    if @round.save
      redirect_to @game
    end
  end

  private

    def load_game
      @game = Game.find(params[:game_id])
    end

end