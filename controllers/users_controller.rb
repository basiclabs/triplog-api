module TripLog
  module Controllers
    class Users < Sinatra::Application
      enable :sessions

      mUsers = DB[:users]

      before do
        if(session[:user_id])
          @user = mUsers[:id => session[:user_id]]
        end
      end

      get '/' do
      end

      get '/register' do
      end

      get '/login' do
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
            session[:user_id] = mUsers.insert(:name => params[:name], :password => params[:password],
              :email => params[:email])
            redirect '/'
          end
        else
          'Passwords must match'
        end
      end

      post '/login' do
        user = mUsers.where(:email => params[:email], :password => params[:password]).all[0]

        if(user) #checks if name and password are in database
          'Yahello senpai~<3~'
          session[:user_id] = user[:id]
          redirect '/'
        else
          redirect '/login'
        end
      end
    end
  end
end
