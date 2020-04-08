class Event < ApplicationRecord
  belongs_to :host
  has_many :guests

  validates :title, presence: true
  validates :date, presence: true
end
