class AddLastValidDatePricesToCar < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :last_valid_date_prices, :date
  end
end
