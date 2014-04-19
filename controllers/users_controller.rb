enable :sessions

mUsers = DB[:users]

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
		if (mUsers.where(:email => params[:email]).count > 0) #checks to see if email is already in db
			redirect '/login' #TODO: update this when login updates
		else
			mUsers.insert(:name => params[:name], :password => params[:password], :email => params[:email])
			session[:user] = true
			redirect '/'
		end
	else
		'Passwords must match'
	end
end

post '/login' do
	if(mUsers.where(:name => params[:name], :password => params[:password]).count > 0) #checks if name and password are in database
		'Yahello senpai~<3~'
		session[:user] = true
	else
		redirect '/'
	end
end