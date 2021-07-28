Rails.application.routes.draw do
  resources :profiles
  resources :homes
  devise_for :users
  root to: "homes#index"
  get '/about', to: 'homes#about'
  get '/contact', to: 'homes#contact'
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
