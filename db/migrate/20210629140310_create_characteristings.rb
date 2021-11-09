class CreateCharacteristings < ActiveRecord::Migration[6.0]
  def change
    create_table :characteristings do |t|
      t.references :characteristical, polymorphic: true, null: false,
                                      index: { name: 'index_characteristics_on_characteristical' }
      t.references :characteristic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
