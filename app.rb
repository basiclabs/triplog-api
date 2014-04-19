require 'sequel'
require 'sinatra'
require 'json'

DB = Sequel.connect('sqlite://dev.db')

require './models/trip'
require './controllers/trips_controller'
