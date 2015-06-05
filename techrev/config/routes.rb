Rails.application.routes.draw do

  namespace :api do 

      root to: 'welcome#index'
      resources :users
    
  end
 
end
