json.extract! request, :id, :estado, :vacant_id, :user_id, :created_at, :updated_at
json.url request_url(request, format: :json)
