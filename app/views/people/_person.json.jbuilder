json.extract! person, :id, :name, :profile_photo, :title, :company_or_school, :email, :address, :linkedin_url, :github_url, :facebook_url, :google_plus_url, :wechat_qrcode, :description, :created_at, :updated_at
json.url person_url(person, format: :json)
