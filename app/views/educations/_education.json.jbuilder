json.extract! education, :id, :school, :degree, :location, :start_time, :end_time, :GPA, :GPA_scale, :description, :person_id, :created_at, :updated_at
json.url education_url(education, format: :json)