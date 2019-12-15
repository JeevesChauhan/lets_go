class PlanRaid < ApplicationRecord

  # Validation
  # Presence and unique check
  validates :user_id, :spot_raid_id, presence: true

  # Making sure the raid plan is between now and the time the raid leaves
  validate :within_time_frame
  def within_time_frame
    planned_time = start_time.strftime("%k%M%S")
    current_time = Time.now.strftime("%k%M%S")
    ending_time = SpotRaid.where("id = ?", spot_raid_id).last.remaining_time.strftime("%k%M%S")

    if (planned_time <= current_time || planned_time >= ending_time)
      errors.add(:remaining_time, "Plan start time must be between now and the ending time")
    end
  end

  belongs_to :user
  belongs_to :spot_raid

  has_one :going_to_raids
end
