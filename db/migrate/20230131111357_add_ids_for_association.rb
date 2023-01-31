class AddIdsForAssociation < ActiveRecord::Migration[7.0]
  def change
    add_column :localities, :city_id, :int
    add_column :crimes, :locality_id, :int
    add_column :crimes, :crime_reporter_id, :int
  end
end
