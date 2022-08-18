class Tag < ApplicationRecord
  has_many :plant_tags, dependent: :destroy
  has_many :plants, through: :plant_tags
  validates :name, presence: true
  validates :name, length: {minimum:3, maximum:10}
end
