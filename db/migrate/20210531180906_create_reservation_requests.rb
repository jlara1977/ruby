class CreateReservationRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :reservation_requests do |t|
      t.references :car, null: false, foreign_key: true
      t.string :email, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :contact_number
      t.integer :kind
      t.string :comment

      t.timestamps
    end
  end
end
