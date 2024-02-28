class CreateAttendedEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :attended_events do |t|
      t.references :attendee, foreign_key: { to_table: :users }
      t.references :attended_event, foreign_key: { to_table: :events }
      t.timestamps
    end
  end
end
