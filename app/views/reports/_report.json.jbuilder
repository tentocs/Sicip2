json.extract! report, :id, :project_id, :file, :date, :created_at, :updated_at
json.url report_url(report, format: :json)