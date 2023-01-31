class CreateCrimes < ActiveRecord::Migration[7.0]
  def change
    create_enum :priority, {low: 0, medium: 1, high: 2}
    create_table :crimes do |t|
      t.text :description
      t.enum :priority, enum_type: "priority", null: false
      t.boolean :resolved, default: false
      t.timestamps
    end
  end
end
