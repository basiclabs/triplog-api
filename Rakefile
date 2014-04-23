require 'sinatra'

task :default => [:server]

task :server do
  `rackup -p 1337`
end

task :console do
  sh('irb -rubygems -I . -r app.rb')
end

namespace :db do

  task :migrate do
    `sequel -m migrations sqlite://dev.db`
  end

  task :drop do
    `rm dev.db`
  end
end
