default_run_options[:pty] = true  # Must be set for the password prompt from git to work
ssh_options[:forward_agent] = true
set :application, "yoga23"
set :deploy_to, "/home/admin/data/#{application}"
set :repository, "git@github.com:azazelo/y.git"
set :scm, "git"
set :user, "root"  # The server's user for deploys
set :scm_passphrase,  "venividivici"  # The deploy user's password
set :branch, "master"

# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "78.24.222.238" #"your web-server here"                          # Your HTTP server, Apache/etc
role :app, "78.24.222.238" #"your app-server here"                          # This may be the same as your `Web` server
role :db,  "78.24.222.238" #"your primary db-server here", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end