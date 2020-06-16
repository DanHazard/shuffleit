class Team < ApplicationRecord
  has_many :players, through: :playerteams
  has_many :matches 

end
