Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # GET /cheeses map to cheeses#index
  # Request to controller#action
  get "/cheeses", to: "cheeses#index"

end
