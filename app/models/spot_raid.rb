class SpotRaid < ApplicationRecord
  belongs_to :user
  belongs_to :land_mark
  belongs_to :pokemon

  has_many :plan_raids
end
