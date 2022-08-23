Rails.application.routes.draw do
  resources :cocktails
  root "cocktails#index"
end
