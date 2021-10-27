class ShipmentLocation
  include Mongoid::Document
  
  field :shipment, type: String
  field :latitude, type: Float
  field :longitude, type: Float
  belongs_to :BrokerageJob
end
