Rails.application.routes.draw do
  get '/input' => 'application#input'
  get '/advstat' => 'application#advstat'
end
