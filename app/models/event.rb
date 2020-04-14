class Event < ApplicationRecord
  has_many :guests

  validates :title, presence: true
end
