class AddMeetingPlaceMeetingDateToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :meeting_place, :string
    add_column :contacts, :meeting_date, :date
  end
end
