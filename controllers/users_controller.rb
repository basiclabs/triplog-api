enable :sessions

Users = DB[:users]

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

get '/test' do
	DB[:users].filter(:name=>'Peep').map(:name).join(', ')
end	

post '/register' do
	if(params[:password] == params[:confirmPassword])
		if(Users)
			mUsers.insert(:name => params[:name], :password => params[:password], :email => params[:email])
		end
		session[:user] = true
		redirect '/'
	else
		'Passwords must match'
	end
end

post '/login' do
	'hi'
end