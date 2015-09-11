workers Integer(ENV['WEB_CONCURRENCY'] || 2)
min_count = Integer(ENV['MIN_THREADS'] || 1)
max_count = Integer(ENV['MAX_THREADS'] || 5)
threads min_count, max_count

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 5432
environment ENV['RACK_ENV'] || 'production'

on_worker_boot do
  # Worker specific setup for Rails 4.1+
  # See: https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#on-worker-boot
  ActiveRecord::Base.establish_connection
end