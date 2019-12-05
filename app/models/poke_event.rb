class PokeEvent < ApplicationRecord
  belongs_to :user
  belongs_to :land_mark
end
