Rails.application.routes.draw do
  get '/new_bmarks' => 'bmarks#new'
  get '/create_bmarks' => 'bmarks#create'
  get '/bmarks' => 'bmarks#index'
  get '/bmarks/:id' => 'bmarks#show'
  get '/bmarks/:id/edit' => 'bmarks#edit'
  get '/bmarks/:id/update' => 'bmarks#update'
  get '/bmarks/:id/destroy' => 'bmarks#destroy'
  
  get '/new_use' => 'use#new'
  get '/create_use' => 'use#create'
  get '/use' => 'use#index'
  get '/use/:id' => 'use#show'
  get '/use/:id/edit' => 'use#edit'
  get '/use/:id/update' => 'use#update'
  get '/use/:id/destroy' => 'use#destroy'
end
