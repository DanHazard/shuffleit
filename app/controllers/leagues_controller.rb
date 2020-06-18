class LeaguesController < ApplicationController
  def index
    @leagues = Leauge.all
  end

  def show
    @league = League.find(params[:id])
  end
  
end
