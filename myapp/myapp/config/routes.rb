Rails.application.routes.draw do
  
  resources :users
  resources :articles do
    resources :tickets
  end

  root 'welcome#index'
end
