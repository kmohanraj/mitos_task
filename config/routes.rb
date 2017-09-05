Rails.application.routes.draw do
  get 'homes/index'

  # devise_for :users
  # get 'human_resources/index'

  # get 'human_resources/mew'

  # get 'human_resources/edit'

  # get 'human_resources/show'

  # get 'employees/index'

  # get 'employees/new'

  # get 'employees/edit'

  # get 'employees/show'

  resources :employees

  resources :human_resources

   # root 'employees#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :homes
   root  "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
