class Spot < ApplicationRecord
  has_many :osakana

  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :title, presence: true 
end
