Rails.application.routes.draw do
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
