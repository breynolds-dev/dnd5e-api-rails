Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :races
      
      # Classes
      namespace :barbarians, defaults: { format: :json } do
          
      end
      resources :barbarians
      
      resources :bards
      resources :clerics
      resources :druids
      resources :fighters
      resources :monks
      resources :paladins
      resources :rangers
      resources :rogues
      resources :sorcerers
      resources :warlocks
      resources :wizards
    end
  end
end
