Rails.application.routes.draw do
  namespace :api, subclass: '',
                  constraints: { subdomain: 'api' },
                  defaults: { format: :json } do
    namespace :v1 do
      # api/v1/characters/human/barbarian/berserker/16
      namespace :characters do
        get ':race/:class/:subclass/:level', to: 'characters#show'
      end

      resources :races

      # Classes
      # namespace :classes do
        get 'barbarians/:subclass/:level', to: 'barbarians#show'
        get 'barbarians/:subclass', to: 'barbarians#show'
        get 'barbarians', to: 'barbarians#index'
      # end

      get 'bards/:subclass/:level', to: 'bards#show'
      get 'bards/:subclass', to: 'bards#show'
      resources :bards

      get 'clerics/:subclass/:level', to: 'clerics#show'
      get 'clerics/:subclass', to: 'clerics#show'
      resources :clerics

      get 'druids/:subclass/:level', to: 'druids#show'
      get 'druids/:subclass', to: 'druids#show'
      resources :druids

      get 'fighters/:subclass/:level', to: 'fighters#show'
      get 'fighters/:subclass', to: 'fighters#show'
      resources :fighters

      get 'monks/:subclass/:level', to: 'monks#show'
      get 'monks/:subclass', to: 'monks#show'
      resources :monks

      get 'paladins/:subclass/:level', to: 'paladins#show'
      get 'paladins/:subclass', to: 'paladins#show'
      resources :paladins

      get 'rangers/:subclass/:level', to: 'rangers#show'
      get 'rangers/:subclass', to: 'rangers#show'
      resources :rangers

      get 'rogues/:subclass/:level', to: 'rogues#show'
      get 'rogues/:subclass', to: 'rogues#show'
      resources :rogues

      get 'sorcerers/:subclass/:level', to: 'sorcerers#show'
      get 'sorcerers/:subclass', to: 'sorcerers#show'
      resources :sorcerers

      get 'warlocks/:subclass/:level', to: 'warlocks#show'
      get 'warlocks/:subclass', to: 'warlocks#show'
      resources :warlocks

      get 'wizards/:subclass/:level', to: 'wizards#show'
      get 'wizards/:subclass', to: 'wizards#show'
      resources :wizards
    end
  end
end
