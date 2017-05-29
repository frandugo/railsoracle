json.extract! telefono, :id, :telefono, :estudiante_id, :docente_id,
:created_at, :updated_at
json.url telefono_url(telefono, format: :json)
