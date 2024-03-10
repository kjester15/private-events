class EventUsersController < ApplicationController
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

  def destroy
    @attended_event = EventUser.where("attended_event_id = ?", params[:id])
    @attending_user = @attended_event.where("attendee_id = ?", current_user.id).first
    @attending_user.destroy
    redirect_to events_path
  end
end
