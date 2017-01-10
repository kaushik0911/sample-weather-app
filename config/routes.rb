Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
  get 'admin' => 'admin#index', :as => :admin_root # creates admin_root_path
  get '/' => 'welcome#index', :as => :user_root # creates user_root_path

  namespace :api do
    namespace :v1 do
      resources :categories, defaults: { format: 'json' }
      resources :weather, defaults: { format: 'json' }
    end
  end

  resources :categories
  resources :weather
end
