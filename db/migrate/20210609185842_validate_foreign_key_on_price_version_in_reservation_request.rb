class ValidateForeignKeyOnPriceVersionInReservationRequest < ActiveRecord::Migration[6.0]
  def change
    validate_foreign_key :reservation_requests, :price_versions
  end
end
