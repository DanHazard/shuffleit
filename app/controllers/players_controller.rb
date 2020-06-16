class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
    @teams = Team.all
  end

  # def create
  #   @player = Player.new


end
