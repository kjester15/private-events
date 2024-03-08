class EventsUsersController < ApplicationController
  def index
    @attended_events = EventUser.all
  end

  def new
    @attended_event = EventUser.new
  end

  def create
    @attended_event = EventUser.new(attendee_id: current_user.id, attended_event_id: params[:id])

    if @attended_event.save
      redirect_to events_path
    else
      redirect_to events_path, status: :unprocessable_entity
    end
  end
end
