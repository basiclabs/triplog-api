require 'sequel'
require 'sinatra'

DB = Sequel.connect('sqlite://dev.db')

require './models/trip'
require './controllers/trips_controller'
