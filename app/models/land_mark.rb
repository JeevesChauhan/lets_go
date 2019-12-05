class LandMark < ApplicationRecord
  has_many :raids
  has_many :poke_events
end
