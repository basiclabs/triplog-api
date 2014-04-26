Sequel.migration do
  up do
    add_column :photos, :trip_id, Integer
  end

  down do
    drop_column :photos, :trip_id
  end
end