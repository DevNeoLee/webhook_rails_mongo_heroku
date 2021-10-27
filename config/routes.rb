Rails.application.routes.draw do
  resources :shipment_locations
  resources :brokerage_jobs
  root 'brokerage_jobs#index'
  
  constraints subdomain: "hooks" do
    post '/:webhook_name' => 'webhooks#receive', as: :receive_webhooks
  end

  # if Rails.env.development?
  #   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  # end

  post "/graphql", to: "graphql#execute"

end
