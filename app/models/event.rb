class Event < ApplicationRecord
  belongs_to :user
  has_many :guests, dependent: :destroy
  has_many :saved_users, through: :guests, source: :user
  has_many :moments, dependent: :destroy

  validates :title, presence: true
end
