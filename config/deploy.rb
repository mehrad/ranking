<<<<<<< HEAD
# config valid for current version and patch releases of Capistrano
lock "~> 3.11.1"

set :application, "ranking"
set :repo_url, "https://github.com/mehrad/ranking.git"
=======
# config valid only for current version of Capistrano
lock '3.11.1'

set :application, 'ranking'
set :repo_url, 'https://github.com/mehrad/ranking.git'
>>>>>>> bf70aa179ff67c9af643be03f323d8828e055ce2

set :deploy_to, '/home/deploy/ranking'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"
<<<<<<< HEAD

set :repo_url, "https://github.com/mehrad/ranking.git"

=======
>>>>>>> bf70aa179ff67c9af643be03f323d8828e055ce2
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
<<<<<<< HEAD
# set :deploy_to, "/var/www/my_app_name"
=======
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git
>>>>>>> bf70aa179ff67c9af643be03f323d8828e055ce2

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
<<<<<<< HEAD
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto
=======
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto
>>>>>>> bf70aa179ff67c9af643be03f323d8828e055ce2

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
<<<<<<< HEAD
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"
=======
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system')
>>>>>>> bf70aa179ff67c9af643be03f323d8828e055ce2

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

<<<<<<< HEAD
# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
=======
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
>>>>>>> bf70aa179ff67c9af643be03f323d8828e055ce2
