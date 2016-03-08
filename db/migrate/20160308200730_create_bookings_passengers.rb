class CreateBookingsPassengers < ActiveRecord::Migration
  def change
    create_table :bookings_passengers do |t|
      t.integer :booking_id
      t.integer :passenger_id

      t.timestamps null: false
    end
  end
end
