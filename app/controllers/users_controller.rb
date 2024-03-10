class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @events = Event.where("creator_id = ?", current_user.id).order(date: :asc)
    @attendances = current_user.attended_events
  end
end
