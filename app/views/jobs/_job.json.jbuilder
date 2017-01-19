json.extract! job, :id, :company, :title, :location, :start_time, :end_time, :description, :person_id, :created_at, :updated_at
json.url job_url(job, format: :json)