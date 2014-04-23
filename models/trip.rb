module TripLog
  module Models
    class Trip < Sequel::Model
      plugin :json_serializer
    end
  end
end
