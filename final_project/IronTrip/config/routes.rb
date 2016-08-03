Rails.application.routes.draw do
  devise_for :users
  root to: 'trip_planners#home'
  # root to: 'home#index'

  resources :trip_planners do
    collection do
      post 'add_venue', to: 'trip_planners#add_venue'
      post 'remove_venue', to: 'trip_planners#remove_venue'

      post 'add_event', to: 'trip_planners#add_event'
      post 'remove_event', to: 'trip_planners#remove_event'

      get 'itenarary'
    end
  end

  resources :schedules

  # resources :venues, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
