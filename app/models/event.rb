class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :attendees, foreign_key: "attended_event_id", class_name: "User", through: :attended_event
end