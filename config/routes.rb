Rails.application.routes.draw do
  # resources :restaurants do
  #   resources :reviews, only: [ :new, :create ]
  # end

  root to: 'restaurants#index'

 resources :restaurants, only: [:index, :show, :new, :create] do
   member do
     get 'reviews'
   end

   resources :reviews, only: [ :new, :create ]
 end

  # root to: 'restaurants#index'
  # resources :restaurants do
  #   resources :reviews, only: [ :new, :create ]
  # end
  # resources :restaurants, path_names: {
  #   show: 'restaurant',
  #   edit: 'edit_restaurant' }
  # get "restaurants/:id/reviews", to: "reviews#new"
end
