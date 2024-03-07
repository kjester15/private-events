class EventsUsersController < ApplicationController
  def index
    @attended_events = EventUser.all
  end

  def show
    @attended_events = EventUser.where("attended_event_id = ?", params[:id])
    @events = Event.where("id = ?", params[:id])
    @attendees = User.where("id = ?", params[:id])
  end

  def new
    @attended_event = EventUser.new
  end

  def create
    @attended_event = EventUser.new(attendee_id: current_user.id, attended_event_id: params[:id])

    if @attended_event.save
      redirect_to events_users_path(params[:id])
    else
      redirect_to events_path, status: :unprocessable_entity
    end
  end
end
