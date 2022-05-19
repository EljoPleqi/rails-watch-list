Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'

  resources :lists do
    member do
      get :movie
    end

    resources :bookmarks, only: [ :new, :create, :destroy]
  end
end
