json.extract! appointment, :id, :fecha, :horario, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
