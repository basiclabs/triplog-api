require 'sequel'
DB = Sequel.connect('sqlite://dev.db')

require './models/trip'
