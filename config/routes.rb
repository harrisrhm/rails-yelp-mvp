Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do 
  #   collection do
  # #     get :all
    resources :reviews, only: [ :new, :create ] # /restaurants/:restaurant_id/reviews/...
  end

end