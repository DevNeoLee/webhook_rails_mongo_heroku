Rails.application.routes.draw do
  resources :brokerage_jobs
  root 'brokerage_jobs#index'
  
end
