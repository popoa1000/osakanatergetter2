class Osakana < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  validates :fish,        presence: true
  validates :tackle,      presence: true
  validates :details,     presence: true
  validates :image,       presence: true
end