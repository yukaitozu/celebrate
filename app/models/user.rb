class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_friendship

  has_many :events
  has_many :guests, dependent: :destroy
  has_many :saved_guests, through: :guests, source: :event
end
