Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'lists#index'

  resources :lists, except: [:index] do
    member do
      get :movie
    end

    resources :bookmarks, only: [ :new, :create, :destroy]
  end
end
