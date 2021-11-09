class AddAirBagsToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :airbags, :integer
  end
end
