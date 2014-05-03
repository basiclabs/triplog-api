require 'sinatra'

desc 'Defaults to rake server'
task :default => [:server]

desc 'Starts the TripLog API'
task :server do
  `rackup -p 1337`
end

desc 'Starts Interactive Console'
task :console do
  sh('irb -rubygems -I . -r app.rb')
end

namespace :db do

desc 'Initialize Database'
  task :migrate do
    `sequel -m migrations sqlite://dev.db`
  end

desc 'Deletes database'
  task :drop do
    `rm dev.db`
  end
end
