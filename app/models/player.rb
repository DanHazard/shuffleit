class Player < ApplicationRecord
  has_many :playerteams
  has_many :teams, through: :playerteams

end
