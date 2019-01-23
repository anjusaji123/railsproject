
require 'sidekiq/web'

Rails.application.routes.draw do
resources :products
resources :carts
mount Sidekiq::Web => '/sidekiq'

get 'signup' => 'user#signup'
get '/login' => 'user#login'
get '/showproducts' => 'product#show'
# get '/addtocart'  => 'product#addtocart'
get '/product/:id' => 'product#show_by_id'
# post '/placeorder' => 'product#placeorder'
# post '/create_cart' => 'cart#create_cart'
# get '/myorders/:user_id' => 'product#myorders'
# get '/show_by_category'  => 'product#show_by_category'
# get '/cat'  => 'product#unique'
get  '/addtocart'  => 'carts#addtocart'
get '/ordernow' =>'carts#ordernow'
get '/wishlist' => 'carts#wishlist'
get '/mywish/:user_id' => 'carts#mywish'
get '/mycart/:user_id' => 'carts#mycart'
get '/myorders/:user_id' => 'carts#myorders'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
