class AddCategoryToFrequentQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :frequent_questions, :category, :integer
  end
end
