class OsakanaSpot
  include ActiveModel::Model
  attr_accessor :fish, :tackle, :details, :image, :title

  validates :fish,        presence: true
  validates :tackle,      presence: true
  validates :details,     presence: true
  validates :image,       presence: true
  #validates :latitude
  #validates :longitude
  validates :title, presence: true 

  def save
    #spot = Spot.create(title: title)
    Osakana.create(fish: fish, tackle: tackle, details: details)
  end
end