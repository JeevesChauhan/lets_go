class SpotRaid < ApplicationRecord

  todayDate = Date.today
  todayTime = Time.new(2000, 1, 1, Time.now.strftime("%k"), Time.now.strftime("%M"), Time.now.strftime("%S"))


  # Validation
  # Presence and unique check
  validates :user_id, :land_mark_id, :pokemon_id, :tier, presence: true
  # Only accept times that are after
  validate :is_after_now
  def is_after_now
    if (remaining_time.strftime("%k%M%S") <= Time.now.strftime("%k%M%S"))
      errors.add(:remaining_time, "Must be a raid that ends sometime after now")
    end
  end

  belongs_to :user
  belongs_to :land_mark
  belongs_to :pokemon

  has_many :plan_raids
end
