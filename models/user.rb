module TripLog
  module Models
    class User < Sequel::Model
      plugin :json_serializer
      one_to_many :trips
    end
  end
end
