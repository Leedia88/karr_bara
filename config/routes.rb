Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "days#index"

resources :days
resources :orders do
    resources :schedule_orders
    resources :order_meals
end
resources :meals


end
