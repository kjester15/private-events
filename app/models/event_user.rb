class EventUser < ApplicationRecord
  validates :attendee_id, uniqueness: { scope: :attended_event }

  belongs_to :attendee, class_name: "User"
  belongs_to :attended_event, class_name: "Event"
end
