Rails.application.routes.draw do
  get 'order_meals/new'
  get 'order_meals/edit'
  get 'order_meals/update'
  get 'order_meals/destroy'
  get 'order_meals/show'
  get 'meals/new'
  get 'meals/create'
  get 'meals/editdestroy'
  get 'meals/index'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "orders#new"
  
resources :orders do
    resources :meals
end
resources :schedule_orders


end
