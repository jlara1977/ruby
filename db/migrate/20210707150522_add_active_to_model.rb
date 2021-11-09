class AddActiveToModel < ActiveRecord::Migration[6.0]
  def change
    add_column :models, :active, :boolean, default: true
  end
end
