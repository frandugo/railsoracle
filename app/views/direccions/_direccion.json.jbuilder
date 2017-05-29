json.extract! direccion, :id, :direccion, :municipio_id, :estudiante_id,
:created_at, :updated_at
json.url direccion_url(direccion, format: :json)
