class BrokerageJob
  include Mongoid::Document
  field :job, type: String
  field :shipment, type: String
end
