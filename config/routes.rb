Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flats do
    resources :bookings, only: [:new, :create]
  end
  # added route for my flats
  get "my_flats", to: "users#my_flats", as: :my_flats_user

  resources :bookings, only: [:index, :show]
  get "my_bookings", to: 'bookings#my_bookings'
end
