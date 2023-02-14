Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get 'dashboard', to: "dashboard#index"
  get 'appearance', to: 'dashboard#appearance'
  root 'dashboard#index'
  # Allows us to use user_path(user) to get URL for a user's profile page
  get ':id', to: 'dashboard#show', as: :user


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
