json.extract! publication, :id, :name, :time, :description, :person_id, :created_at, :updated_at
json.url publication_url(publication, format: :json)