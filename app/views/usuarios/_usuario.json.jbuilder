json.extract! usuario, :id, :numero, :fecha, :estado, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)