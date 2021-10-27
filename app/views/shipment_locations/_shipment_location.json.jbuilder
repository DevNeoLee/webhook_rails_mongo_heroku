json.extract! shipment_location, :id, :shipment, :latitude, :longitude, :BrokerageJob_id, :created_at, :updated_at
json.url shipment_location_url(shipment_location, format: :json)
