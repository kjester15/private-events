class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :events_users, foreign_key: "attended_event_id"
  has_many :attendees, through: :event_users, class_name: "User"
end