class BackupNameModelWithCapitalizeFirstLetter < ActiveRecord::Migration[6.0]
  def up
    Model.all.each do |model|
      model.update(name: model.name.upcase_first)
    end
  end
end
