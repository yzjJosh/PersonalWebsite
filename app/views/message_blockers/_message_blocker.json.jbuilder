json.extract! message_blocker, :id, :rule_name, :description, :name_matcher, :email_matcher, :ip_matcher, :message_matcher,:triggered_times, :created_at, :updated_at
json.url message_blocker_url(message_blocker, format: :json)
