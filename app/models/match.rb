class Match < ApplicationRecord
  belongs_to :home_team, class_name: 'Team', foreign_key: :home_team_id
  belongs_to :away_team, class_name: 'Team', foreign_key: :away_team_id

  belongs_to :league

  validates :league_id, presence: true
end
