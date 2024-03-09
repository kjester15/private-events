class UsersController < ApplicationController
  def show
    @events = Event.where("creator_id = ?", current_user)
    @attendances = current_user.attended_events
  end
end
