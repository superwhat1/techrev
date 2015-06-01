Rails.application.routes.draw do

  namespace :api,constraints: { subdomain: 'api' }, 
                 path: 'welcome#index' do
    
      resources :users
    
  end

end
