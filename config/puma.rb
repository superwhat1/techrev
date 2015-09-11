workers Integer(ENV['WEB_CONCURENCY'] || 2)
threads_count = Integer(ENV['MAX_TRHEADS'] || 5)
threads threads_count, threads_count

preload_app!

rackup		DefaultRackup
port		ENV['PORT']		|| 5432
enviroment 	ENV['RACK_ENV'] || 'production'

on_worker_boot do |variable|

	ActiveRecord::Base.establish_connnection
end