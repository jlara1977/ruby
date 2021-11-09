class AddUniqueIndexToBrandName < ActiveRecord::Migration[6.0]
  disable_ddl_transaction!

  def change
    add_index :brands, :name, unique: true, algorithm: :concurrently
  end
end
