
require 'api_constraints'
Techrev::Application.routes.draw do

  namespace :api, constraints: {subdomain: 'api'}, path: '/' do
  	scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do

      root to: 'welcome#index'
      resources :users, :only => [:show, :create, :update, :destroy]

    end
  end
 
end
