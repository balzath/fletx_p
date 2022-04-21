json.extract! usersvehiculo, :id, :user_id, :vehiculo_id, :horas, :estado, :created_at, :updated_at
json.url usersvehiculo_url(usersvehiculo, format: :json)
