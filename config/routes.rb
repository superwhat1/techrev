
Techrev::Application.routes.draw do

#  constraints subdomain: 'api' do

      root to: 'welcome#index'
      resources :users

#  end
end
