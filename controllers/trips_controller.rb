get '/trips' do
	Trip.all.to_json
end

get '/trips/:id' do
	Trip.where(:id => params[:id]).all.to_json
end

get '/trips/:id/photos' do
end

post '/trips' do
end

post '/trips/:id/photos' do
end

delete '/trips/:id' do
end

delete '/trips/:id/photos/:id' do
end

put '/trips/:id' do
end

put '/trips/:id/photos/:id' do
end
