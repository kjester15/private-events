class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_users, foreign_key: "attended_event_id"
  has_many :attendees, through: :event_users, source: :attendee
end