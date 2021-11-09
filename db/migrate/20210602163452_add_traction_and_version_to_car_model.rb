class AddTractionAndVersionToCarModel < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :traction, :integer, default: 0
    add_column :cars, :version_name, :string
  end
end
