require 'sinatra'
require 'data_mapper'
require 'sqlite3'

enable :sessions

DataMapper::setup(:default, "sqlite://dev.db")  

get '/' do
  erb :index
end

get '/register' do
  erb :register
end

get '/login' do
  erb :login
end

get '/logout' do
  session.clear
  redirect '/'
end
