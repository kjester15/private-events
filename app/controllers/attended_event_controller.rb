class AttendedEventController < ApplicationController
  def show
    # @attended_event = AttendedEvent.where("event_id = ?", params[:id])
    # @attendees = AttendedEvent.where("event_id = ?", params[:id]).attendee_id.all
  end
end
