class Event < ApplicationRecord
  belongs_to :user
  has_many :guests, dependent: :destroy
  has_many :saved_users, through: :guests, source: :user

  validates :title, presence: true
end
