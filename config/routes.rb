
Techrev::Application.routes.draw do

#  constraints subdomain: 'api' do

      root to: 'welcome#index'
      resources :users 
      resources :logins, only: [:new, :create, :destroy]
      
#  end
end
