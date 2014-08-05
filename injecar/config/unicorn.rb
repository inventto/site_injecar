worker_processes 1

listen 3500

preload_app true

timeout 30

pid               '/var/www/apps/site_injecar/injecar/shared/pids/unicorn.pid'
stderr_path       '/var/www/apps/site_injecar/injecar/shared/log/unicorn.error.log'
stdout_path       '/var/www/apps/site_injecar/injecar/shared/log/unicorn.out.log'
working_directory '/var/www/apps/site_injecar/injecar'

after_fork do |server, worker|
    ActiveRecord::Base.establish_connection
end
