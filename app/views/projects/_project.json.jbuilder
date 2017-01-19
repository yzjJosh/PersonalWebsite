json.extract! project, :id, :name, :start_time, :end_time, :description, :education_id, :job_id, :created_at, :updated_at
json.url project_url(project, format: :json)