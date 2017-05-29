json.extract! documento, :id, :tipodoc, :numdoc, :created_at, :updated_at
json.url documento_url(documento, format: :json)