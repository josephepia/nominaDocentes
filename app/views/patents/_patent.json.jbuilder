json.extract! patent, :id, :nombre, :patenttype_id, :user_id, :created_at, :updated_at
json.url patent_url(patent, format: :json)
