Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  root 'cocktails#index'
  get 'cocktails/index'
  get 'cocktails/new'
  get 'cocktails/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do 
    resources :doses, only: [:new, :create]
  end
end
