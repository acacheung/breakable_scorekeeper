class IdentitiesController < ApplicationController
  def index
    @identities = Identity.all
  end

  def show
    @identity = Identity.find(params[:id])
  end

  def new
    @identity = Identity.new
  end

  def edit
    @identity = Identity.find(params[:id])
  end

  def create
    @identity = Identity.new(params[:id])
    if @identity.save
      redirect_to @identity, :notice => 'Identity was created'
    else
      render :action => 'new'
    end
  end

  def update
    @identity = Identity.find(params[:id])
  end

  def destroy
    @identity = Identity.find(params[:id])
    @identity.destroy
  end
end