Rails.application.routes.draw do
  namespace :api, path: '',
                  # constraints: { subdomain: 'api' },
                  defaults: { format: :json } do
    namespace :v1 do
      # api/v1/characters/human/barbarian/berserker/16
      namespace :characters do
        get ':race/:class/:subclass/:level', to: 'characters#show'
      end

      get 'races/:race', to: 'races#show'
      get 'races', to: 'races#index'

      # Classes
      namespace :classes do
        get 'barbarian/:subclass/:level', to: 'barbarians#show'
        get 'barbarian/:subclass', to: 'barbarians#show'
        get 'barbarian', to: 'barbarians#index'

        get 'bard/:subclass/:level', to: 'bards#show'
        get 'bard/:subclass', to: 'bards#show'
        get 'bard', to: 'bards#index'

        get 'cleric/:subclass/:level', to: 'clerics#show'
        get 'cleric/:subclass', to: 'clerics#show'
        get 'cleric', to: 'clerics#index'

        get 'druid/:subclass/:level', to: 'druids#show'
        get 'druid/:subclass', to: 'druids#show'
        get 'druid', to: 'druids#index'

        get 'fighter/:subclass/:level', to: 'fighters#show'
        get 'fighter/:subclass', to: 'fighters#show'
        get 'fighter', to: 'fighters#index'

        get 'monk/:subclass/:level', to: 'monks#show'
        get 'monk/:subclass', to: 'monks#show'
        get 'monk', to: 'monks#index'

        get 'paladin/:subclass/:level', to: 'paladins#show'
        get 'paladin/:subclass', to: 'paladins#show'
        get 'paladin', to: 'paladins#index'

        get 'ranger/:subclass/:level', to: 'rangers#show'
        get 'ranger/:subclass', to: 'rangers#show'
        get 'ranger', to: 'rangers#index'

        get 'rogue/:subclass/:level', to: 'rogues#show'
        get 'rogue/:subclass', to: 'rogues#show'
        get 'rogue', to: 'rogues#index'

        get 'sorcerer/:subclass/:level', to: 'sorcerers#show'
        get 'sorcerer/:subclass', to: 'sorcerers#show'
        get 'sorcerer', to: 'sorcerers#index'

        get 'warlock/:subclass/:level', to: 'warlocks#show'
        get 'warlock/:subclass', to: 'warlocks#show'
        get 'warlock', to: 'warlocks#index'

        get 'wizard/:subclass/:level', to: 'wizards#show'
        get 'wizard/:subclass', to: 'wizards#show'
        get 'wizard', to: 'wizards#index'
      end
    end
  end
end
