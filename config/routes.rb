Rails.application.routes.draw do
  resources :buildings, except: [:new, :create, :destroy]
  resources :companies, except: [:destroy]
  resources :employees
end
