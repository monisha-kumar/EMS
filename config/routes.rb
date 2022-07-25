Rails.application.routes.draw do
  resources :employees, only:[:show, :index, :destroy,:create,:new,:edit,:update]

  root 'pages#home'
  # get 'employees/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
