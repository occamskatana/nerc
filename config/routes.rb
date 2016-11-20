Rails.application.routes.draw do
  
  post 'contact/:id', controller: 'inquiries', action: 'contact', as: "contact"

  get 'admins/index'

  get 'admins/:id' => 'admins#show', as: 'admins_show'

  devise_for :admins, path: '', path_names: {sign_in: 'admin'}
  root to: 'random#home'
  resources :inquiries
  get 'random/about'

  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
