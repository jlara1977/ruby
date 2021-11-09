class AddPriceVersionIdToReservationRequest < ActiveRecord::Migration[6.0]
  disable_ddl_transaction!

  def change
    add_reference :reservation_requests, :price_version, index: {algorithm: :concurrently}
  end
end
