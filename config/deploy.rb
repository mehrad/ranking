# config valid only for current version of Capistrano
lock '3.11.1'

set :application, 'ranking'
set :repo_url, 'https://github.com/mehrad/ranking.git'

set :deploy_to, '/home/deploy/ranking'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp


# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.

# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto


# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []

# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do


      #desc "Recreate symlink"
      #task :resymlink, :roles => :app do
      #  run "rm -f #{current_path} && ln -s #{release_path} #{current_path}"
      #end
# Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end
#after "deploy:create_symlink", "deploy:resymlink", "deploy:update_crontab"

end
