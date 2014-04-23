require 'irb'
require 'sinatra'

task :default => [:server]

desc "Starts the TripLog API"
task :server do
  `rackup -p 1337`
end

task :console do
  ARGV.clear
  IRB.start
end

namespace :db do

  task :migrate do
    `sequel -m migrations sqlite://dev.db`
  end

  task :drop do
    `rm dev.db`
  end
end
