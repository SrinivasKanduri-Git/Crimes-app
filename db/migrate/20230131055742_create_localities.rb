class CreateLocalities < ActiveRecord::Migration[7.0]
  def change
    create_table :localities do |t|
      t.string :locality
      t.timestamps
    end
  end
end
