class CreateCarModelRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :car_model_requests do |t|
      t.string :email, null: false
      t.string :brand, null: false
      t.string :model, null: false
      t.integer :annual_distance, null: false
      t.integer :contract_time, null: false

      t.timestamps
    end
  end
end
