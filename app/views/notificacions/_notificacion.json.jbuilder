json.extract! notificacion, :id, :notificacion, :docente_id, :estudiante_id,
:created_at, :updated_at
json.url notificacion_url(notificacion, format: :json)
