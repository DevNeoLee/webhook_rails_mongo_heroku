Rails.application.routes.draw do
  root 'brokerage_jobs#index'
  
  resources :brokerage_jobs
end
