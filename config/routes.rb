Rails.application.routes.draw do
  root 'cocktails#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do 
    member do
      get :favorites
      post :favorites, :action => 'favorite'
    end  
    collection do 
      get :favorites
    end
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
