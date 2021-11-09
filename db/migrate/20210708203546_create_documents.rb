class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.references :documentable, polymorphic: true, null: false
      t.jsonb :document_data

      t.timestamps
    end
  end
end
