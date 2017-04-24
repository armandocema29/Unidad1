class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :pet_name
      t.string :doctor_name
      t.text :reason
      t.date :appointment_date
      t.references :doctor, index: true, foreign_key: true
      t.references :pet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
