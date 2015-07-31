
Techrev::Application.routes.draw do

  namespace :api, constraints: {subdomain: 'api'} do

      root to: 'welcome#index'
      resources :users, :only => [:show, :create, :update, :destroy]

  end
 root to: 'welcome#index'
end
