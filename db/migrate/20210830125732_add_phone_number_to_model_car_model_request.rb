class AddPhoneNumberToModelCarModelRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :car_model_requests, :phone_number, :string
  end
end
