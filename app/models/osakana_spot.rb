class OsakanaSpot
  include ActiveModel::Model
  attr_accessor :fish, :tackle, :details, :image, :title, :user_id, :spot_id, :latitude, :longitude

  validates :fish,        presence: true
  validates :tackle,      presence: true
  validates :details,     presence: true
  validates :image,       presence: true
  validates :latitude,    presence: true
  validates :longitude,   presence: true
  validates :title,       presence: true 
  #validates :user_id,     precence: true



  def save
    spot = Spot.create(title: title, latitude: latitude, longitude: longitude)
    Osakana.create(fish: fish, tackle: tackle, details: details, image: image, user_id: user_id, spot_id: spot.id)
  end

end