class Pokemon < ApplicationRecord

  # Validation
  # Presence and unique check
  validates :name, presence: true
  validates :name, uniqueness: true


  has_many :spot_raids
end
