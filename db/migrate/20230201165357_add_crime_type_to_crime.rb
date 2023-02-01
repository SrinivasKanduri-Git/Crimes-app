class AddCrimeTypeToCrime < ActiveRecord::Migration[7.0]
  def change
    add_column :crimes, :crime_type, :string
  end
end
