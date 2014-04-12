Sequel.migration do
  up do
    create_table(:trips) do
      primary_key :id
      String :name, :null => false
      Date :date, :null => false
      Date :published_date, :null => false
      String :description
      TrueClass :private, :null => false
    end

    create_table(:photos) do
      primary_key :id
      String :caption
      String :url, :null => false
      Date :date, :null => false
      Float :lat, :null => false
      Float :long, :null => false
    end

    create_table(:users) do
      primary_key :id
      String :email, :null => false
      String :name, :null => false
      String :password, :null => false
    end
  end

  down do
    drop_table(:trips)
    drop_table(:photos)
    drop_table(:users)
  end
end
