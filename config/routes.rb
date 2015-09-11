
Techrev::Application.routes.draw do

#  constraints subdomain: 'api' do

      root to: 'welcome#index'
      resources :users, :only => [:show, :create, :update, :destroy]

#  end
end
