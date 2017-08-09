Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'categories#index'
  resources :categories, only: [:index, :show] do
    resources :scripts, path: :quotes do
      member do
        post 'add_star'
        delete 'remove_star'
      end
    end
  end
  resources :stars, only: [:index]
  resources :users, path: :quotes, only: [:index]
end
