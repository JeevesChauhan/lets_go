class User < ApplicationRecord

  has_many :spot_raids
  has_many :plan_raids
  has_many :poke_events
  has_many :going_to_raids

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
