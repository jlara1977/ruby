class AddPriorityDisplayToModels < ActiveRecord::Migration[6.0]
  def change
    add_column :models, :prioritized_display, :bool, default: false
  end
end
