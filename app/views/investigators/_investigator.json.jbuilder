json.extract! investigator, :id, :ci, :name, :lastname, :address, :email, :phone, :department, :specialty, :academic_degree, :registration_date, :position, :created_at, :updated_at
json.url investigator_url(investigator, format: :json)