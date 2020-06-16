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
PlayerTeam.destroy_all

#players
tom = Player.create!(name: "Tom", team_id: 1)
joe = Player.create!(name: "Joe", team_id: 1)
jake = Player.create!(name: "Jake", team_id: 1)
dom = Player.create!(name: "Dom", team_id: 1)
alex = Player.create!(name: "Alex", team_id: 2)
tim = Player.create!(name: "Tim", team_id: 2)
ron = Player.create!(name: "Ron", team_id: 2)
blake = Player.create!(name: "Blake", team_id: 2)

#teams
team_1 = Team.create!(name: "Risky Biscuits", wins: 0, losses: 0)
team_2 = Team.create!(name: "Tu Tang Clan", wins: 0, losses: 0)
team_3 = Team.create!(name: "Tang Biscuits", wins: 0, losses: 0)

#match
match_one = Match.create!(league_id: 1,home_team_id: 1, away_team_id: 2, winner: "Risky Biscuits" , home_team_score: 14, away_team_score: -10  )
#create the matches with our CRUD form

#leauge
leauge_one = League.create!(name: "Monday Hammer Division")
leauge_two = League.create!(name: "Tuesday Hammer Division")

#playerteams
12.times do 
  pl_id = Player.ids.sample
  tm_id = Team.ids.sample
  PlayerTeam.create!(player_id: pl_id, team_id:tm_id)
end


  