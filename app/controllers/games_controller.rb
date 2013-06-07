class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params[:game])
    if @game.save
      redirect_to root_path, :notice => 'Game created'
    else
      render :action => 'new'
    end
  end
end