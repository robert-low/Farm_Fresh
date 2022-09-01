Rails.application.routes.draw do
  devise_for :users


  root to: "products#index"


  resources :products do
    resources :transactions
  end
resources :users, only: '%w'[:show]

end


# //, only: '%w'[:index, :show, :new, :create]
# , only: '%w'[:index, :new, :create]
