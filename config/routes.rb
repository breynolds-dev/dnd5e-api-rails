Rails.application.routes.draw do
  namespace :api, path: '', defaults: { format: :json } do
    namespace :v1 do
      # /v1/characters/human/barbarian/berserker/16
      namespace :characters do
        get ':race/:class/:subclass/:level', to: 'characters#show'
      end

      get 'races/:race/:subrace', to: 'races#show'
      get 'races/:race', to: 'races#show'
      get 'races', to: 'races#index'

      get 'languages/:language', to: 'languages#show'
      get 'languages', to: 'languages#index'

      get 'skills/:skill', to: 'skills#show'
      get 'skills', to: 'skills#index'

      get 'traits/:trait', to: 'traits#show'
      get 'traits', to: 'traits#index'

      get 'abilities/:ability', to: 'abilities#show'
      get 'abilities', to: 'abilities#index'

      # Classes
      namespace :classes do
        get ':class/levels/:level', to: 'class_names#class_levels_show'
        get ':class/:subclass/:level', to: 'class_names#show'
        get ':class/levels', to: 'class_names#class_levels_index'
        get ':class/subclasses', to: 'class_names#class_subclass_index'
        get ':class/:subclass', to: 'class_names#class_subclass_levels_index'
        get ':class/', to: 'class_names#class_index'
        root to: 'class_names#index'
      end
    end
  end

  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#exception'
end
