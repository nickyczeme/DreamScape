Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :modes, only: [] do
    resources :dreams, except: [:destroy,:index,:show]
  end
  resources :dreams, only: [:index,:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
