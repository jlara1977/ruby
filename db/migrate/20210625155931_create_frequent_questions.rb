class CreateFrequentQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :frequent_questions do |t|
      t.text :question, null: false
      t.text :answer, null: false

      t.timestamps
    end
  end
end
