json.extract! vehiculo, :id, :nombre, :descripcion, :modelo, :valor, :calificacion, :estado, :created_at, :updated_at
json.url vehiculo_url(vehiculo, format: :json)
