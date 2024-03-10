class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_users, foreign_key: "attended_event_id"
  has_many :attendees, through: :event_users, source: :attendee

  def past
    @past = Event.where("date < :today", { today: Date.today }).order(date: :asc)
  end

  def upcoming
    @upcoming = Event.where("date >= :today", { today: Date.today }).order(date: :asc)
  end
end
