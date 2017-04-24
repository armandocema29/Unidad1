json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :pet_name, :doctor_name, :reason, :appointment_date, :doctor_id, :pet_id
  json.url appointment_url(appointment, format: :json)
end
