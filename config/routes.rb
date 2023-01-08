Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # GET /cheeses map to cheeses#index
  # GET Request to controller#action
  get "/cheeses", to: "cheeses#index"
  # GET /cheeses/:id map to cheeses#show
  # GET Request to controller#show
  get "/cheeses/:id", to: "cheeses#show"
  
end
