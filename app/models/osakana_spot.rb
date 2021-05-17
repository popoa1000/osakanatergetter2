class OsakanaSpot
  include ActiveModel::Model
  attr_accessor :fish, :tackle, :details, :image, :title, :user_id

  validates :fish,        presence: true
  validates :tackle,      presence: true
  validates :details,     presence: true
  validates :image,       presence: true
  #validates :latitude
  #validates :longitude
  validates :title,       presence: true 
  #validates :user_id,     precence: true



  def save
    spot = Spot.create(title: title)
    Osakana.create(fish: fish, tackle: tackle, details: details, image: image, user_id: user_id)
  end

end