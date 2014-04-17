class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :time
      t.integer :customer_id
      t.integer :restaurant_id
      t.integer :party_size
      t.integer :min_seats
      t.integer :max_seats

      t.timestamps
    end
  end
end
