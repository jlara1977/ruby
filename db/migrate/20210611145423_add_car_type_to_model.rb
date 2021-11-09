class AddCarTypeToModel < ActiveRecord::Migration[6.0]
  def change
    add_column :models, :car_type, :integer
  end
end
