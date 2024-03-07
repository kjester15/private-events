class AttendedEventsController < ApplicationController
  def show
    @attended_event = AttendedEvents.where("attended_event_id = ?", params[:id])
    @events = Event.where("id = ?", params[:id])
    @attendees = User.where("id = ?", params[:id])
  end

  def new
    @attended_event = AttendedEvent.new
  end

  def create
    @attended_event = AttendedEvent.new(attendee_id: current_user.id, attended_event_id: params[:id])

    if @attended_event.save
      redirect_to attended_events_path(params[:id])
    else
      redirect_to events_path, status: :unprocessable_entity
    end
  end
end
