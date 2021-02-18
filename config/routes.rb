Rails.application.routes.draw do
  root to: "cocktail#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses [:create]    
  end
     resources :doses, [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
