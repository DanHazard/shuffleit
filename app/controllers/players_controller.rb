class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
    render :show
  end

  def new
    @player = Player.new
  end

  def create
    new_player = Player.create(player_params)

    redirect_to player_path(new_player.id) 
  end


  private
  
  def player_params
    params.require(:player).permit(:name)
  end


end
