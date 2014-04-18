require 'sinatra'
require 'sequel'

enable :sessions

DB = Sequel.sqlite('dev.db')

mUsers = DB.users


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
		mUsers.insert(:name => params[:name])
		mUsers.insert(:password => params[:password])

		session[:user] = true
		redirect '/'
	else
		'Passwords must match'
	end
end

post '/login' do
	'hi'
end