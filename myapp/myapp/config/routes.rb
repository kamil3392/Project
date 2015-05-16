Rails.application.routes.draw do
  
  resources :articles do
    resources :tickets
  end

  root 'welcome#index'
end
