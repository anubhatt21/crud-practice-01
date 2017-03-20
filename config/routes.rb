Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/necklaces" => "necklaces#index"
  get "/necklaces/new" => "necklaces#new"
  post "/necklaces" => "necklaces#create"
  get "necklaces/:id" => "necklaces#show"
  get "necklaces/:id/edit" => "necklaces#edit"
end
