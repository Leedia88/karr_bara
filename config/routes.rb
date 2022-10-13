Rails.application.routes.draw do
    
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "orders#new"
  
resources :orders do
    resources :order_meals
end
resources :meals
resources :schedule_orders


end
