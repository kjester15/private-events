class ChangeEventsUsersToEventUsers < ActiveRecord::Migration[7.1]
  def change
    rename_table :events_users, :event_users
  end
end
