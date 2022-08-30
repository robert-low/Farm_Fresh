Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :products do
    resources :transactions
  end
end


# //, only: '%w'[:index, :show, :new, :create]
# , only: '%w'[:index, :new, :create]
