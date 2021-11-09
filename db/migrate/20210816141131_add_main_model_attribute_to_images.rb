class AddMainModelAttributeToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :main_model_image, :boolean, default: false
  end
end
