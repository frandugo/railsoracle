json.extract! correo, :id, :correo, :estudiante_id, :docente_id, :created_at,
:updated_at
json.url correo_url(correo, format: :json)
