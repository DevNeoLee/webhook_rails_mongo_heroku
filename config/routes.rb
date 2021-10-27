Rails.application.routes.draw do
  resources :shipment_locations
  resources :brokerage_jobs
  root 'brokerage_jobs#index'
  
end
