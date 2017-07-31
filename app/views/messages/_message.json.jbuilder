json.extract! message, :id, :sender, :email, :message, :ip, :created_at, :updated_at
json.url message_url(message, format: :json)
