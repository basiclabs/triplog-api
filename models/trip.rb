module TripLog
  module Models
    class Trip < Sequel::Model
      plugin :json_serializer
      many_to_one :user
      one_to_many :photos
    end
  end
end
