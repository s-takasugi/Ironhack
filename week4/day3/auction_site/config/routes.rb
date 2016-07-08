Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'user#home'
  get '/users/:user_id/products', to: 'product#index', as: 'user_products'
  get '/users/:user_id/products/new', to: 'product#new'
  post '/users/:user_id/products/', to: 'product#create'

end
