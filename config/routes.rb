Rails.application.routes.draw do

  root to: 'restaurants#index'
  resources :restaurants, path_names: {
    show: 'restaurant',
    edit: 'edit_restaurant'
  }

end
