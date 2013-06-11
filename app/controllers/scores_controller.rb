class ScoresController < ApplicationController
  before_filter :load_game_round

  def index
    @scores = @round.scores.all
  end

  def new
    @score = @round.scores.new
  end

  def create
    @score = @round.scores.new(params[:score])
    if @score.save
      redirect_to @game
    end
  end

  private
    def load_game_round
      @game = Game.find(params[:game_id])
      @round = @game.rounds.find(params[:round_id])
    end
end