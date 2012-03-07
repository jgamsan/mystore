$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
set :rvm_ruby_string, 'ruby-1.9.3-p0'
set :rvm_type, :user
set :application, "mystore"
set :domain, "tienda.galiclick.com"
set :user, "galiclick"
set :port, 58378
set :repository,  "git@github.com:jgamsan/mystore.git"


set :scm, :git

default_run_options[:pty] = true
set :use_sudo, false
set :deploy_via, :remote_cache
set :deploy_to, "/aplicacion_web/public_html/#{application}"
role :web, domain
role :app, domain
role :db,  domain, :primary => true

set :rails_env, "production"

after 'deploy:update_code' do
  run "cd #{release_path}; rake assets:precompile RAILS_ENV=production "
end

after "deploy", "deploy:cleanup"

