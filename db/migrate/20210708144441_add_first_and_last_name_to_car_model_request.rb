class AddFirstAndLastNameToCarModelRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :car_model_requests, :first_name, :string
    add_column :car_model_requests, :last_name, :string
  end
end
