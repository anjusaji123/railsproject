Rails.application.routes.draw do
resources :products
resources :carts


post '/signup' => 'user#signup'
post '/login' => 'user#login'
get '/showproducts' => 'product#show'
# get '/addtocart'  => 'product#addtocart'
get '/product/:id' => 'product#show_by_id'
# post '/placeorder' => 'product#placeorder'
# post '/create_cart' => 'cart#create_cart'
get '/myorders/:user_id' => 'product#myorders'
get '/showbycategory'  => 'product#show_by_category'
# get '/cat'  => 'product#unique'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
