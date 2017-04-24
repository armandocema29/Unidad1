class ChangeLastAppointmentColumnTypeToDate < ActiveRecord::Migration
  def up
    change_column :pets, :last_appointment, :date
  end
  def down
    change_column :pets, :last_appointment, :string
  end
  
end
