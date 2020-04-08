class Event < ApplicationRecord
  belongs_to :host
  belongs_to :guest
end
