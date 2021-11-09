class AddRowSeats < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :row_seats, :integer, default: 2
  end
end
