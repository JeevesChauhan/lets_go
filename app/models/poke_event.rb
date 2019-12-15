class PokeEvent < ApplicationRecord

  # Validation
  # Presence and unique check
  validates :title, :land_mark_id, :user_id, presence: true
  
  belongs_to :user
  belongs_to :land_mark
end
