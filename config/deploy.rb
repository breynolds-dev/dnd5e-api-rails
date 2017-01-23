# config valid only for Capistrano 3.7.1
lock '3.7.1'

set :application, 'dnd5e-api'
set :repo_url, 'git@github.com:breynolds-dev/dnd5e-api.git'

# Default branch is :master
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/var/www/5e-api.com'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, %w(config/database.yml)

# Default value for linked_dirs is []
set :linked_dirs, %w(log tmp/pids tmp/cache tmp/sockets vendor/bundle public)

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 2

namespace :deploy do
  desc 'reload the database with seed data'
  task :seed do
    on primary :db do
      within current_path do
        with rails_env: fetch(:stage) do
          execute 'cd #{release_path} && RAILS_ENV=production DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rake db:drop db:create db:migrate db:seed'
        end
      end
    end
  end
end
