class AddCategoryToCharacteristics < ActiveRecord::Migration[6.0]
  disable_ddl_transaction!

  def change
    add_column :characteristics, :category, :integer
    add_index :characteristics, [:name, :category], unique: true, algorithm: :concurrently
  end

end
