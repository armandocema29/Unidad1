json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :breed, :type, :age, :weight, :last_appointment
  json.url pet_url(pet, format: :json)
end
