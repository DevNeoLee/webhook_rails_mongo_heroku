json.extract! brokerage_job, :id, :job, :shipment, :status, :created_at, :updated_at
json.url brokerage_job_url(brokerage_job, format: :json)
