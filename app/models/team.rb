class Team < ApplicationRecord
  has_many :players

  has_many :home_matches, class_name: 'Match', foreign_key: :home_team_id, dependent: :destroy
  has_many :teams_played_at_home, through: :home_matches, source: :away_team

  has_many :away_matches, class_name: 'Match', foreign_key: :away_team_id, dependent: :destroy
  has_many :teams_played_on_road, through: :away_matches, source: :home_team

  def all_teams_played
    self.teams_played_at_home + self.teams_played_on_road
  end


end
