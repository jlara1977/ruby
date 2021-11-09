class AddUniqueIndexToModelName < ActiveRecord::Migration[6.0]
  disable_ddl_transaction!

  def change
    add_index :models, :name, unique: true, algorithm: :concurrently
  end
end
