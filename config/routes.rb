Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :products do
    resources :transactions, except: :destroy
  end
  resources :users, only: [:show]
  resources :transactions, only: [:destroy]
end

# //, only: '%w'[:index, :show, :new, :create]
# , only: '%w'[:index, :new, :create]
