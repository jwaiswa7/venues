Rails.application.routes.draw do
  resources :venues
  resources :users
  # devise_for :users

  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
