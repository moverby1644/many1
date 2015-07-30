Rails.application.routes.draw do
  get '/idea/:id' => 'application#show'
  get '/index' => 'application#index'
end
