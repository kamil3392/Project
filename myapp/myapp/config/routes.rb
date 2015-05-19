Rails.application.routes.draw do

  LoginApp::Application.routes.draw do
    resources :users, :user_sessions
    match 'login' => 'user_sessions#new', :as => :login
    match 'logout' => 'user_sessions#destroy', :as => :logout
end 
  
  resources :users
  resources :articles do
    resources :tickets
  end

  root 'welcome#index'
end
