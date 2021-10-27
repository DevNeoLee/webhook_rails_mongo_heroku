class ShipmentLocation
  include Mongoid::Document
  include Mongoid::Timestamps 

  field :shipment, type: String
  field :latitude, type: Float
  field :longitude, type: Float
  belongs_to :BrokerageJob
end
