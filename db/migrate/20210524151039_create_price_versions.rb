class CreatePriceVersions < ActiveRecord::Migration[6.0]
  disable_ddl_transaction!

  def change
    create_table :price_versions do |t|
      t.references :car, null: false, foreign_key: true
      t.monetize :monthly_price, null: false
      t.integer :annual_distance, null: false
      t.integer :contract_time, null: false

      t.timestamps
    end

    add_index :price_versions, [:car_id, :annual_distance, :contract_time], unique: true,
              algorithm: :concurrently, name: 'index_price_versions_on_car_and_distance_and_time'
  end
end
