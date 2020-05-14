Rails.application.routes.draw do
  resources :cocktails, :ingredients do
    resources :doses
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
