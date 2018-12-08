# frozen_string_literal: true

server '10.23.10.18', port: 22, roles: [:web, :app, :db], primary: true

set :application,     'total-portal-externo'
set :stage,           :staging
set :deploy_to,       "/home/#{fetch(:user)}/apps/#{fetch(:application)}"
set :branch,          fetch(:stage)

set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_bind,       "unix://#{shared_path}/tmp/sockets/puma.sock"
set :puma_access_log, "#{release_path}/log/puma.access.log"
set :puma_error_log,  "#{release_path}/log/puma.error.log"

set :console_env,     fetch(:stage)
set :console_user,    fetch(:user)
