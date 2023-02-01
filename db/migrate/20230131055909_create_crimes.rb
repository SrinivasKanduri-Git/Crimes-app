class CreateCrimes < ActiveRecord::Migration[7.0]
  def change
    create_table :crimes do |t|
      t.text :description
      t.integer :priority, default: 0
      t.boolean :resolved, default: false
      t.timestamps
    end
  end
end
