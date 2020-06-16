# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.destroy_all
Team.destroy_all
Match.destroy_all
League.destroy_all

#leauge
league_one = League.create!(name: "Monday Hammer Division")
league_two = League.create!(name: "Tuesday Hammer Division")

#teams
team_1 = Team.create!(name: "Risky Biscuits", wins: 0, losses: 0)
team_2 = Team.create!(name: "Tu Tang Clan", wins: 0, losses: 0)
team_3 = Team.create!(name: "Tang Biscuits", wins: 0, losses: 0)

#players
tom = Player.create!(name: "Tom", team: team_1)
joe = Player.create!(name: "Joe", team: team_1)
jake = Player.create!(name: "Jake", team: team_1)
dom = Player.create!(name: "Dom", team: team_1)
alex = Player.create!(name: "Alex", team: team_2)
tim = Player.create!(name: "Tim", team: team_2)
ron = Player.create!(name: "Ron", team: team_2)
blake = Player.create!(name: "Blake", team: team_2)

#match
match_one = Match.create!(league: league_one, home_team: team_1, away_team: team_2, winner: team_1.name, home_team_score: 14, away_team_score: -10  )
match_two = Match.create!(league: league_one, home_team: team_2, away_team: team_1, winner: team_1.name, home_team_score: 7, away_team_score: 10  )
match_three = Match.create!(league: league_one, home_team: team_2, away_team: team_3, winner: team_2.name, home_team_score: 14, away_team_score: 8  )
#create the matches with our CRUD form



#playerteams
# 12.times do
#   pl_id = Player.ids.sample
#   tm_id = Team.ids.sample
#   PlayerTeam.create!(player_id: pl_id, team_id:tm_id)
# end
