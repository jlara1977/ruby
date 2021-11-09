class AddForeignKeyOnPriceVersionInRequestReservation < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :reservation_requests, :price_versions, validate: false
  end
end
