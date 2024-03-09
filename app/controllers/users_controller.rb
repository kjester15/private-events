class UsersController < ApplicationController
  def show
    @events = Event.find(current_user.id)
    @attendances = current_user.attended_events
  end
end
