require 'sinatra'
require 'data_mapper'
require 'sqlite3'

enable :sessions

DataMapper::setup(:default, "sqlite://dev.db")  

class User
	include DataMapper::Resource
	property :id, Serial
	property :username, 	String, :required => true
	property :password, 	String, :required => true
	property :email, 	String
end

DataMapper.finalize.auto_upgrade!


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

post '/register' do
	if(params[:password] == params[:confirmPassword])
		user = User.new
		user.email = ""
		user.username = params[:username]
		user.password = params[:password]
		user.save
		redirect '/'
	else
		'Passwords must match'
	end
end

post '/login' do
	'hi'
end