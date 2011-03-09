set :application, "campuscoupons"
set :domain,      "campuscoupons.swingid.com"
set :repository,  "git@github.com:zacharykahn/Campucoupons.git"
set :use_sudo,    false
set :deploy_to,   "/home/denis/projects/#{application}"
set :scm,         "git"
set :user, "denis"

ssh_options[:paranoid] = false

role :app, domain
role :web, domain
role :db,  domain, :primary => true

namespace :deploy do
  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end