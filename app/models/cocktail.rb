class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  mount_uploader :picture, PhotoUploader
  validates :name, uniqueness: true, presence: true
end
