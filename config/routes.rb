Rails.application.routes.draw do
  root to: 'cocktails#index'
  get 'pages/about'
  get 'pages/menu'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  resources :pages, only: [:about, :home] do
    collection do
      get 'about', to: 'pages#about', as: :about
    end
  end
end

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
