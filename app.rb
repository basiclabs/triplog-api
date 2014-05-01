require 'sinatra'
require 'sequel'
require 'json'

DB = Sequel.connect('sqlite://dev.db')

require './models/user'
require './models/trip'
require './models/photo'
require './controllers/trips_controller'
require './controllers/users_controller'

module TripLog
  class App < Sinatra::Application
    use Controllers::Trips
    use Controllers::Users
  end
end
