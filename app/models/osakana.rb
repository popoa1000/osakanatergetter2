class Osakana < ApplicationRecord

  belongs_to :user
  has_one_attached :image
  belongs_to :spot


end
