require 'rubygems'
require 'sinatra'
require 'sequel'
require 'json'

DB = Sequel.connect('sqlite://dev.db')

require './models/trip'
require './controllers/trips_controller'
require './controllers/users_controller'
