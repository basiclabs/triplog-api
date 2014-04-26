module TripLog
  module Models
    class Photo < Sequel::Model
      plugin :json_serializer
      many_to_one :trip
    end
  end
end
