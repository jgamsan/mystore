$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
set :rvm_ruby_string, 'ruby-1.9.3-p125'
set :rvm_type, :user
require "bundler/capistrano"
set :application, "mystore"
set :domain, "tienda.galiclick.com"
set :user, "galiclick"
set :port, 58378
set :repository,  "git@github.com:jgamsan/mystore.git"
set :keep_releases, 2

set :scm, :git

default_run_options[:pty] = true
set :use_sudo, false
set :deploy_via, :remote_cache
set :deploy_to, "/aplicacion_web/public_html/#{application}"
role :web, domain
role :app, domain
role :db,  domain, :primary => true

set :rails_env, "production"
namespace :customs do
  task :symlink, :roles => :app do
    run <<-CMD
      ln -nfs #{shared_path}/system/spree #{release_path}/public
    CMD
  end
end

after "deploy:symlink","customs:symlink"
after "deploy", "deploy:cleanup"
require 'capistrano-unicorn'
