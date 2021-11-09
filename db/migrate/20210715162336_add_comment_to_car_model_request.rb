class AddCommentToCarModelRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :car_model_requests, :comment, :text
  end
end
