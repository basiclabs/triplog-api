# api_endpoints.rb

DB = Sequel.connect('sqlite://dev.db')

get '/trips' do
		'Failure to Comply! User data has not been generated!'
	end

get '/trips/:id' do
	DB.fetch("SELECT * FROM trips WHERE :id IS :id do |row|
		puts row[:name]
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
