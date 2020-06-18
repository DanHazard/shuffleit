class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
    render :show
  end

  def new
    @match = Match.new
  end
  
  def create
    @match = Match.new(match_params)
    if @match.save
      redirect_to @match
    else
      render :new
    end

  end
end

private

def match_params
  params.require(:match).permit(:league_id, :home_team_id, :away_team_id, :winner, :home_team_score, :away_team_score)
end
