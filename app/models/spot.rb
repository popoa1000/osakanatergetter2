class Spot < ApplicationRecord
  has_many :osakana, foreign_key:  'Spot_id'


end
