class BrokerageJob
  include Mongoid::Document
  include Mongoid::Timestamps 

  field :job, type: String
  field :shipment, type: String
  field :status, type: String

  has_many :shipment_locations, dependent: :destroy
end
