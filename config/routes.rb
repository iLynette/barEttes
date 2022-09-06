Rails.application.routes.draw do
  get 'lists/index'
  resources :cocktails
  root "cocktails#index"
end
