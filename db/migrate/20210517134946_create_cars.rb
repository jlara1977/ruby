class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.references :model, null: false, foreign_key: true
      t.integer :year, null: false
      t.integer :shift
      t.integer :fuel

      t.timestamps
    end
  end
end
