class BackupBrandNameWithCapitalizeFirstLetter < ActiveRecord::Migration[6.0]
  def up
    Brand.all.each do |brand|
      brand.update(name: brand.name.upcase_first)
    end
  end
end