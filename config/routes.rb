Rails.application.routes.draw do
resources :products
get '/product' => 'product#index'

get '/data' => 'product#data'
post '/signup' => 'user#signup'

get '/category'  => 'product#search'
get '/cat'  => 'product#unique'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
