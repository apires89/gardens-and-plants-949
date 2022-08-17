class Garden < ApplicationRecord
  validates_presence_of :name,:banner_url
  has_many :plants, dependent: :destroy
end
