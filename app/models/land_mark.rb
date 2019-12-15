class LandMark < ApplicationRecord

  # Validation
  # Presence and unique check
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :raids
  has_many :poke_events
end
