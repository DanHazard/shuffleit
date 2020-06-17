class TeamsController < ApplicationController
  
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
  end

end
