class RemoveYearOfCars < ActiveRecord::Migration[6.0]
  def change
    safety_assured { remove_column :cars, :year }
  end
end
