class AddLandingOptionForBrands < ActiveRecord::Migration[6.0]
  def change
    add_column :brands, :landing_view, :boolean, default: false
  end
end
