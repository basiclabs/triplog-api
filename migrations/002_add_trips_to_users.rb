Sequel.migration do
  up do
    add_column :trips, :user_id, Integer
  end

  down do
    drop_column :trips, :user_id
  end
end
