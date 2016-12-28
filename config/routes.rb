Rails.application.routes.draw do
  namespace :api, path: '', defaults: { format: :json } do
    namespace :v1 do
      get 'races/:race/:subrace',        to: 'races#show'
      get 'races/:race',                 to: 'races#show'
      get 'races',                       to: 'races#index'

      get 'languages/:language',         to: 'languages#show'
      get 'languages',                   to: 'languages#index'

      get 'skills/:skill',               to: 'skills#show'
      get 'skills',                      to: 'skills#index'

      get 'traits/:trait',               to: 'traits#show'
      get 'traits',                      to: 'traits#index'

      get 'abilities/:ability',          to: 'abilities#show'
      get 'abilities',                   to: 'abilities#index'

      # Classes
      namespace :classes do
        get ':class/levels/:level',      to: 'levels#show_levels'
        get ':class/:subclass/:level',   to: 'levels#show'
        get ':class/levels',             to: 'levels#index'
        get ':class/subclasses',         to: 'subclasses#index'
        get ':class/:subclass',          to: 'subclasses#show'
        get ':class/',                   to: 'class_names#show'
        root                             to: 'class_names#index'
      end
    end
  end

  get '/404',                            to: 'errors#not_found'
  get '/500',                            to: 'errors#exception'
end
