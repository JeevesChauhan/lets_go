class User < ApplicationRecord

  #Adding Validation
  # Presence and unique check
  validates :trainer, :email, :password, presence: true
  validates :trainer, :email, :password, uniqueness: true
  # Making sure that the password is long enough
  validates  :password, length: {in: 6..20}
  # Just to ensure pos and neg doesn't go below 0
  validates :pos, :neg, length: {minimum: 0}


  has_many :spot_raids
  has_many :plan_raids
  has_many :poke_events
  has_many :going_to_raids

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
