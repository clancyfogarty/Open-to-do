Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :users do
      resources :lists
    end

    resources :lists, only: [] do
      resources :items, only: [:create, :update]
    end

    resources :items, only: [:index, :destroy]
  end

  get 'about' => 'welcome#about'
  root 'welcome#index'

end
