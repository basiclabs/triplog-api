module TripLog
  module Controllers
    class Trips < Sinatra::Application
      get '/trips' do
        Models::Trip.all.to_json
      end

      get '/trips/:id' do
        Trip(:id => params[:id]).all.to_json
      end

      get '/trips/:id/photos' do
      end

      post '/trips' do
        Models::Trip.create(params)
      end

      post '/trips/:id/photos' do
      end

      delete '/trips/:id' do
        trip = Trip(:id => params[:id])

        if trip
          trip.delete
          return 200
        else
          return 404
        end
      end

      delete '/trips/:id/photos/:id' do
      end

      put '/trips/:id' do
        trip = Trip(:id => params[:id])

        if trip
          trip.update(:name => params[:name], :date => params[:date], :published_date => params[:published_date], 
            :description => params[:description], :private => params[:private])

          return 200, trip.to_json
        else
          return 404
        end
      end

      put '/trips/:id/photos/:id' do
      end
    end
  end
end
