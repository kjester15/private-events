class UsersController < ApplicationController
  def show
    @events = Event.where("creator_id = ?", current_user.id).order(date: :asc)
    @attendances = current_user.attended_events
  end
end
