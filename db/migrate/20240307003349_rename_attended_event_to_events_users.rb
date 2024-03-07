class RenameAttendedEventToEventsUsers < ActiveRecord::Migration[7.1]
  def change
    rename_table :attended_events, :events_users
  end
end
