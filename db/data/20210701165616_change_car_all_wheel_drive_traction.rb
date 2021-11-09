class ChangeCarAllWheelDriveTraction < ActiveRecord::Migration[6.0]
  def up
    Car.where('traction > 0').update_all(traction: 1)
  end
end
