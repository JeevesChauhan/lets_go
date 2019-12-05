class GoingToRaid < ApplicationRecord
  belongs_to :user
  belongs_to :plan_raid
end
