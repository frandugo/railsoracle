json.extract! acudiente, :id, :nom1, :nom2, :ape1, :ape2, :documento_id,
:created_at, :updated_at
json.url acudiente_url(acudiente, format: :json)
