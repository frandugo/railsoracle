json.extract! estudiante, :id, :nom1, :nom2, :ape1, :ape2, :documento_id,
:acudiente_id, :curso_id, :created_at, :updated_at
json.url estudiante_url(estudiante, format: :json)
